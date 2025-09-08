#  # With Bearer token
#  ./filter-repos.sh maven-remote-repo.json --post-url=http://localhost:8080 --token=your-bearer-token

#  # From environment variable (more secure)
#  export AUTH_TOKEN="your-bearer-token"
#  ./filter-repos.sh maven-remote-repo.json --post-url=http://localhost:8080 --token="$AUTH_TOKEN"

#  # Dry run with token to see what would be called
#  ./filter-repos.sh maven-remote-repo.json --post-url=http://localhost:8080 --token=abc123xyz --dry-run

#  # Complete example with all options
#  ./filter-repos.sh maven-remote-repo.json \
#    --post-url=http://indy-host.url \
#    --post-endpoint=/api/admin/stores \
#    --token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9... \
#    --fields=name,type,format \
#    --dry-run

#!/bin/bash

# Filter repositories and dry-run list each JSON object
# Usage: ./filter-repos.sh [input-file] [--dry-run]

INPUT_FILE="${1:-maven-remote-repo.json}"
DRY_RUN=false
FIELDS="name,type,url"  # Default fields
POST_URL=""
POST_ENDPOINT="/api/admin/stores"  # Base endpoint
AUTH_TOKEN=""  # Bearer token

# Parse arguments
for arg in "$@"; do
    case $arg in
        --dry-run)
            DRY_RUN=true
            ;;
        --fields=*)
            FIELDS="${arg#*=}"
            ;;
        --post-url=*)
            POST_URL="${arg#*=}"
            ;;
        --post-endpoint=*)
            POST_ENDPOINT="${arg#*=}"
            ;;
        --token=*)
            AUTH_TOKEN="${arg#*=}"
            ;;
    esac
done

# Convert comma-separated fields to jq format
IFS=',' read -ra FIELD_ARRAY <<< "$FIELDS"
JQ_SELECT=""
for field in "${FIELD_ARRAY[@]}"; do
    JQ_SELECT="$JQ_SELECT\"$field\": .$field, "
done
JQ_SELECT="{${JQ_SELECT%%, }}"

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found"
    exit 1
fi

# Filter function
filter_repos() {
    jq -r ".items[] | select(.name | test(\"^(hosted-|group-)\")) | $JQ_SELECT" "$INPUT_FILE"
}

# Count objects
count_objects() {
    jq -r ".items[] | select(.name | test(\"^(hosted-|group-)\"))" "$INPUT_FILE" | jq -s 'length'
}

# DELETE function
delete_repos() {
    if [ -z "$POST_URL" ]; then
        return
    fi
    
    echo "Deleting repositories from: $POST_URL$POST_ENDPOINT"
    echo "Path format: {packageType}/{type}/{name}"
    echo
    
    # First collect all repositories into an array
    repos_data=$(jq -r ".items[] | select(.name | test(\"^(hosted-|group-)\")) | \"\(.packageType // \"maven2\"):\(.type):\(.name)\"" "$INPUT_FILE")
    
    # Process each repository
    while IFS= read -r line; do
        if [ -z "$line" ]; then
            continue
        fi
        
        IFS=':' read -r packageType type name <<< "$line"
        
        # Construct the full URL with path parameters
        FULL_URL="$POST_URL$POST_ENDPOINT/$packageType/$type/$name"
        
        if [ "$DRY_RUN" = true ]; then
            echo "DRY RUN - Would DELETE: $FULL_URL"
            if [ -n "$AUTH_TOKEN" ]; then
                echo "         - With Bearer token: ${AUTH_TOKEN:0:10}..."
            fi
        else
            echo
            echo "Repository: $name (type: $type, packageType: $packageType)"
            echo "URL: $FULL_URL"
            printf "Are you sure you want to DELETE this repository? [y/N]: "
            read confirmation < /dev/tty
            
            case "$confirmation" in
                y|Y|yes|YES|Yes)
                    echo "Deleting: $FULL_URL"
                    if [ -n "$AUTH_TOKEN" ]; then
                        curl -X DELETE -H "Authorization: Bearer $AUTH_TOKEN" "$FULL_URL" || echo "Failed to DELETE: $FULL_URL"
                    else
                        curl -X DELETE "$FULL_URL" || echo "Failed to DELETE: $FULL_URL"
                    fi
                    ;;
                *)
                    echo "Skipped deletion of: $name"
                    ;;
            esac
        fi
    done <<< "$repos_data"
}

echo "Filtering repositories from: $INPUT_FILE"
echo "Pattern: names starting with 'hosted-' or 'group-'"
echo

# Get count
TOTAL_COUNT=$(count_objects)

echo "Found $TOTAL_COUNT matching repositories"
echo

if [ "$DRY_RUN" = true ]; then
    echo "DRY RUN - Showing selected fields for each repository:"
    echo "======================================================="
    filter_repos
else
    echo "Selected fields output:"
    filter_repos
fi

echo
# DELETE repositories if URL provided
delete_repos

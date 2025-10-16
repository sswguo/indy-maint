#!/bin/bash

# API Client with Auto Token Management
# Usage: ./api.sh [options] <method> <endpoint> [json-data]

TOKEN_FILE="$HOME/.accessToken"
API_BASE_URL="${API_BASE_URL:-http://localhost:8080}"
AUTH_ENDPOINT="${AUTH_ENDPOINT:-/auth/token}"

# Colors for output - check if terminal supports colors
if [[ -t 1 ]] && command -v tput >/dev/null 2>&1 && tput colors >/dev/null 2>&1; then
    GREEN=$(tput setaf 2)
    RED=$(tput setaf 1)
    YELLOW=$(tput setaf 3)
    BLUE=$(tput setaf 4)
    BOLD=$(tput bold)
    NC=$(tput sgr0)
else
    GREEN=""
    RED=""
    YELLOW=""
    BLUE=""
    BOLD=""
    NC=""
fi

log() {
    printf "${GREEN}[$(date '+%H:%M:%S')]${NC} %s\n" "$1"
}

warn() {
    printf "${YELLOW}[WARN]${NC} %s\n" "$1"
}

error() {
    printf "${RED}[ERROR]${NC} %s\n" "$1"
    exit 1
}

info() {
    printf "${BLUE}[INFO]${NC} %s\n" "$1"
}

show_help() {
    printf "${GREEN}API Client with Token Management${NC}\n\n"
    printf "${YELLOW}USAGE:${NC}\n"
    printf "    %s [options] <method> <endpoint> [json-data]\n\n" "$0"
    printf "${YELLOW}OPTIONS:${NC}\n"
    printf "    --help              Show this help message\n"
    printf "    --token-help        Show token management help\n"
    printf "    --refresh-token     Get and save new token before making request\n"
    printf "    --show-token        Display current token from ~/.accessToken\n"
    printf "    --check-token       Validate if current token works\n"
    printf "    --force-auth        Add authentication header even for GET requests\n"
    printf "    --save <file>       Save response to specified file\n\n"
    printf "${YELLOW}ARGUMENTS:${NC}\n"
    printf "    method              HTTP method (GET, POST, PUT, DELETE, PATCH)\n"
    printf "    endpoint            API endpoint path (e.g., /api/v1/releases)\n"
    printf "    json-data           JSON data for POST/PUT requests (optional)\n\n"
    printf "${YELLOW}EXAMPLES:${NC}\n"
    printf "    %s GET /api/v1/releases\n" "$0"
    printf "    %s POST /api/v1/releases '{\"name\":\"my-release\",\"snapshot\":\"v1.0.0\"}'\n" "$0"
    printf "    %s PUT /api/v1/releases/my-release '{\"status\":\"completed\"}'\n" "$0"
    printf "    %s DELETE /api/v1/releases/my-release\n" "$0"
    printf "    %s --refresh-token GET /api/v1/releases\n" "$0"
    printf "    %s --save releases.json GET /api/v1/releases\n" "$0"
    printf "    %s --save response.json --force-auth GET /api/v1/private/data\n" "$0"
    printf "    %s --check-token\n\n" "$0"
    printf "${YELLOW}ENVIRONMENT VARIABLES:${NC}\n"
    printf "    API_BASE_URL        Base URL (default: http://localhost:8080)\n"
    printf "    AUTH_ENDPOINT       Token endpoint (default: /auth/token)\n"
    printf "    API_USERNAME        Username for token refresh\n"
    printf "    API_PASSWORD        Password for token refresh\n\n"
}

show_token_help() {
    printf "${GREEN}Token Management Help${NC}\n\n"
    printf "${YELLOW}MANUAL TOKEN SETUP:${NC}\n"
    printf "Save your token manually:\n"
    printf "    ${BLUE}echo \"your-access-token-here\" > ~/.accessToken${NC}\n\n"
    printf "${YELLOW}KUBERNETES TOKEN:${NC}\n"
    printf "Get token from Kubernetes secret:\n"
    printf "    ${BLUE}kubectl get secret my-token -o jsonpath='{.data.token}' | base64 -d > ~/.accessToken${NC}\n\n"
    printf "${YELLOW}OAUTH/API TOKEN:${NC}\n"
    printf "Get token from auth API:\n"
    printf "    ${BLUE}curl -s -X POST https://auth.example.com/token \\\\\n"
    printf "      -H \"Content-Type: application/json\" \\\\\n"
    printf "      -d '{\"username\":\"user\",\"password\":\"pass\"}' \\\\\n"
    printf "      | jq -r '.access_token' > ~/.accessToken${NC}\n\n"
    printf "${YELLOW}AUTOMATIC TOKEN REFRESH:${NC}\n"
    printf "Set environment variables for auto-refresh:\n"
    printf "    ${BLUE}export API_USERNAME=\"your-username\"\n"
    printf "    export API_PASSWORD=\"your-password\"\n"
    printf "    %s --refresh-token GET /api/v1/releases${NC}\n\n" "$0"
    printf "${YELLOW}TOKEN FILE LOCATION:${NC}\n"
    printf "    ${BLUE}~/.accessToken${NC} (%s)\n\n" "${TOKEN_FILE}"
    printf "${YELLOW}CURRENT TOKEN STATUS:${NC}\n"
    printf "    Use ${BLUE}%s --show-token${NC} to see current token\n" "$0"
    printf "    Use ${BLUE}%s --check-token${NC} to validate token\n\n" "$0"
}

refresh_token() {
    log "Refreshing authentication token..."

    local username="${API_USERNAME}"
    local password="${API_PASSWORD}"

    if [[ -z "$username" || -z "$password" ]]; then
        error "API_USERNAME and API_PASSWORD environment variables required for token refresh"
    fi

    local auth_url="${API_BASE_URL}${AUTH_ENDPOINT}"
    log "Getting token from: $auth_url"

    # Attempt token refresh
    local response=$(curl -s -X POST "$auth_url" \
        -H "Content-Type: application/json" \
        -d "{\"username\":\"$username\",\"password\":\"$password\"}" \
        2>/dev/null)

    if [[ $? -ne 0 ]]; then
        error "Failed to connect to auth endpoint"
    fi

    # Try different token field names
    local token=""
    if command -v jq >/dev/null 2>&1; then
        token=$(echo "$response" | jq -r '.access_token // .token // .jwt // .authToken // empty' 2>/dev/null)
    else
        # Fallback without jq - basic parsing
        token=$(echo "$response" | grep -o '"access_token":"[^"]*"' | cut -d'"' -f4)
        if [[ -z "$token" ]]; then
            token=$(echo "$response" | grep -o '"token":"[^"]*"' | cut -d'"' -f4)
        fi
    fi

    if [[ -z "$token" || "$token" == "null" ]]; then
        error "Failed to extract token from response: $response"
    fi

    # Save token
    echo "$token" > "$TOKEN_FILE"
    chmod 600 "$TOKEN_FILE"

    log "Token refreshed and saved to $TOKEN_FILE"
}

show_token() {
    if [[ ! -f "$TOKEN_FILE" ]]; then
        warn "No token file found at $TOKEN_FILE"
        return 1
    fi

    local token=$(cat "$TOKEN_FILE" | tr -d '\n\r ')
    if [[ -z "$token" ]]; then
        warn "Token file is empty"
        return 1
    fi

    # Show first and last few characters for security
    local token_preview="${token:0:10}...${token: -10}"
    info "Current token: $token_preview"
    info "Token length: ${#token} characters"
    info "Token file: $TOKEN_FILE"
}

check_token() {
    if [[ ! -f "$TOKEN_FILE" ]]; then
        error "No token file found at $TOKEN_FILE"
    fi

    local token=$(cat "$TOKEN_FILE" | tr -d '\n\r ')
    if [[ -z "$token" ]]; then
        error "Token file is empty"
    fi

    log "Checking token validity..."

    # Test token with a simple API call (adjust endpoint as needed)
    local test_response=$(curl -s -o /dev/null -w "%{http_code}" \
        -H "Authorization: Bearer $token" \
        "${API_BASE_URL}/api/v1/health" 2>/dev/null)

    if [[ "$test_response" == "200" ]]; then
        log "✅ Token is valid"
    elif [[ "$test_response" == "401" ]]; then
        warn "❌ Token is invalid or expired"
        return 1
    else
        warn "⚠️  Could not verify token (HTTP $test_response)"
        return 1
    fi
}

get_token() {
    if [[ ! -f "$TOKEN_FILE" ]]; then
        error "Token file not found: $TOKEN_FILE. Use --token-help for setup instructions."
    fi

    local token=$(cat "$TOKEN_FILE" | tr -d '\n\r ')
    if [[ -z "$token" ]]; then
        error "Token file is empty: $TOKEN_FILE"
    fi

    echo "$token"
}

api_request() {
    local method="$1"
    local endpoint="$2"
    local data="$3"

    local url="${API_BASE_URL}${endpoint}"
    local curl_cmd="curl -s -w \"\\nHTTP Status: %{http_code}\\nTime: %{time_total}s\\n\" -X $method \"$url\""

    # Add token for non-GET methods, or when --force-auth is used
    if [[ "$method" != "GET" ]] || [[ "$FORCE_AUTH" == "true" ]]; then
        local token=$(get_token)
        curl_cmd="$curl_cmd -H \"Authorization: Bearer $token\""
        log "Making authenticated $method request to $url"
        info "Request: curl -X $method \"$url\" -H \"Authorization: Bearer ${token:0:10}...\""
    else
        log "Making $method request to $url (no auth)"
        info "Request: curl -X $method \"$url\""
    fi

    # Add content type for requests with data
    if [[ -n "$data" ]]; then
        curl_cmd="$curl_cmd -H \"Content-Type: application/json\" -d '$data'"
    fi

    if [[ -n "$data" ]]; then
        info "Data: $data"
    fi
    echo "---"

    # Execute request
    local response=$(eval "$curl_cmd")
    local exit_code=$?

    if [[ $exit_code -ne 0 ]]; then
        error "Request failed with exit code $exit_code"
    fi

    # Parse response (remove status info for JSON formatting)
    local json_response=$(echo "$response" | sed '$d' | sed '$d')
    local status_info=$(echo "$response" | tail -2)

    # Save response to file if requested
    if [[ -n "$SAVE_FILE" ]]; then
        # Save raw JSON response to file
        echo "$json_response" > "$SAVE_FILE"
        log "Response saved to: $SAVE_FILE"

        # Also save formatted version if jq is available
        if command -v jq >/dev/null 2>&1 && echo "$json_response" | jq empty 2>/dev/null; then
            echo "$json_response" | jq . > "${SAVE_FILE%.json}.formatted.json" 2>/dev/null
            info "Formatted response saved to: ${SAVE_FILE%.json}.formatted.json"
        fi

        # Show file info
        local file_size=$(wc -c < "$SAVE_FILE" | tr -d ' ')
        info "File size: $file_size bytes"
    fi

    # Display response to terminal
    if command -v jq >/dev/null 2>&1 && echo "$json_response" | jq empty 2>/dev/null; then
        echo "$json_response" | jq .
    else
        echo "$json_response"
    fi

    echo "---"
    echo "$status_info"
}

# Parse command line arguments
AUTO_REFRESH=false
FORCE_AUTH=false
SAVE_FILE=""

while [[ $# -gt 0 ]]; do
    case $1 in
        --help|-h)
            show_help
            exit 0
            ;;
        --token-help)
            show_token_help
            exit 0
            ;;
        --refresh-token)
            AUTO_REFRESH=true
            shift
            ;;
        --show-token)
            show_token
            exit $?
            ;;
        --check-token)
            check_token
            exit $?
            ;;
        --force-auth)
            FORCE_AUTH=true
            shift
            ;;
        --save)
            if [[ -z "$2" ]]; then
                error "--save requires a filename argument"
            fi
            SAVE_FILE="$2"
            shift 2
            ;;
        -*)
            error "Unknown option: $1. Use --help for usage information."
            ;;
        *)
            break
            ;;
    esac
done

# Check for required arguments
if [[ $# -lt 2 ]]; then
    error "Missing required arguments. Use --help for usage information."
fi

METHOD="$1"
ENDPOINT="$2"
DATA="$3"

# Validate HTTP method
case "$METHOD" in
    GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)
        ;;
    *)
        error "Invalid HTTP method: $METHOD"
        ;;
esac

# Refresh token if requested
if [[ "$AUTO_REFRESH" == "true" ]]; then
    refresh_token
fi

# Make the API request
api_request "$METHOD" "$ENDPOINT" "$DATA"
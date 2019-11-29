

#!/bin/sh
if [ $# -eq 0 ]; then
    echo "No directory name passed to $0." >&2
    exit 1
fi

while [ ! -z "$1" ]; do
    DIR=$1
    echo "Processing $DIR..." >&2

    find "$DIR" -name "*.http-metadata.json" | 
    while read FILE; do 
        grep responseStatusCode "$FILE" | 
        grep 404 > /dev/null && 
        rm "$FILE" && 
        echo "Removed $FILE" >&2
    done

    echo "Cleaning empty dirs in $DIR..." >&2
    find "$DIR" -type d -empty |
    while read EMPTYDIR; do
        rmdir -vp "$EMPTYDIR";
    done

    shift
done



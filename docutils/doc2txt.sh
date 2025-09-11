#!/bin/bash
# Convert AsciiDoc (.adoc) and reStructuredText (.rst) files to plain text (.txt)

if [ $# -lt 2 ]; then
  echo "Usage: $0 output_dir file1.[adoc|rst] [file2 ...]"
  exit 1
fi

# Target directory
outdir=$1
shift

mkdir -p "$outdir"

for file in "$@"; do
  ext="${file##*.}"
  base=$(basename "$file" .$ext)
  txt="${outdir}/${base}.txt"

  case "$ext" in
    adoc)
      echo "Converting $file → $txt ..."
      tmp_html=$(mktemp /tmp/${base}.XXXXXX.html)
      # AsciiDoc → HTML
      asciidoctor -o "$tmp_html" "$file" || { echo "❌ Asciidoctor failed on $file"; continue; }
      # HTML → plain text
      pandoc "$tmp_html" -t plain -o "$txt" || { echo "❌ Pandoc failed on $tmp_html"; continue; }
      rm -f "$tmp_html"
      ;;
    rst)
      echo "Converting $file → $txt ..."
      # Pandoc can read .rst directly
      pandoc "$file" -t plain -o "$txt" || { echo "❌ Pandoc failed on $file"; continue; }
      ;;
    *)
      echo "Skipping $file (unsupported extension: .$ext)"
      ;;
  esac
done

echo "✅ All conversions done. Output in: $outdir"

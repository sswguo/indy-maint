#!/bin/bash

for number in $( seq 0 255 )
do
  hex_dir=$( printf "%02x" ${number} )
  if [ -d "${hex_dir}" ]; then
    echo "Remove dir: ${hex_dir}"
    #rm -rf ${hex_dir}
  else
    echo "Dir does not exists: ${hex_dir}"
  fi
done

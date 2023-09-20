#!/bin/bash

num_options=$1
shift

declare -A options

while [[ $# -gt 0 ]]; do
  option_num=${1#-} 
  option_val="$2"
  
  if [[ "$option_num" =~ ^[0-9]+$ ]]; then
    options["$option_num"]=$option_val
  else
    echo "Invalid option number: $option_num" >&2
    exit 1
  fi

  shift 2
done

for ((i = 1; i <= num_options; i++)); do
  option_val=${options["$i"]}
  echo "-------------------------"
  echo "Running applications for Workspace $i: $option_val"
  echo "-------------------------"
  xdotool set_desktop $i
  command="${options["$i"]}"
  eval "$command"
  sleep 2
done

xdotool set_desktop 0

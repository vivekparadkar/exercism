#!/usr/bin/env bash

main() {

  [[ $# -ne 2 ]] && { echo "Usage: hamming.sh <string1> <string2>"; exit 1; }

  src="$1"
  tgt="$2"

  src_length="${#src}"
  tgt_length="${#tgt}"

  [[ $src_length -ne $tgt_length ]] && { echo "Source and target length is different, strands must be of equal length."; exit 1; }

  count=0
  for ((i = 0; i < src_length; i++))
  do
    sc=${src:i:1}
    tc=${tgt:i:1}

    [[ "$sc" != "$tc" ]] && { ((count++)); }
  done

  echo "$count"
}

main "$@"
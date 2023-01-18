#!/usr/bin/env bash


main() {
  number="$1"

  output=""

  ((number % 3 == 0)) && { output+="Pling"; }
  ((number % 5 == 0)) && { output+="Plang"; }
  ((number % 7 == 0)) && { output+="Plong"; }
  [[ -z $output ]] &&  { output=$number; }

  echo "$output"
}


main "$@"


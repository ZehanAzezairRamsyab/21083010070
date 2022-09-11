#!/bin/bash

printf "apa yang kamu suka ?\n"
printf "makan ?\n"
printf "jalanjalan ?\n"
printf "ayang ?\n"

read apa

case "$apa" in
 "makan")
  echo "Gak makan mati prenn!"
  ;;
 "jalanjalan")
  echo "Butuh healing prend masa kuliah terus"
  ;;
 "ayang")
  echo "gaada ayang hidupku sepi"
  ;;
esac

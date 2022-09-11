#!/bin/bash

select minuman in angmer angput ciu gedangklutuk susu semua gasidobos
do
  case $minuman in
   angmer|angput|ciu|gedangklutuk|semua)
     echo "semuaa redyy boss"
     ;;
   susu)
    echo "telas bos"
   ;;
   gasidobos)
    break
   ;;
   *) echo "Tidak ada di daftar menu"
   ;;
  esac
done 

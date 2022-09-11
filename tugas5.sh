#!/bin/sh
#tugas5.sh
echo "------------------------------------"
echo "Sistem Penghitung Nilai Tugas SISOP"
echo "------------------------------------"
echo -n "Masukan Nama MHS : "
read nama
echo -n "Masukan NPM MHS : "
read npm
echo -n "Masukan Nilai tugas 1 : "
read tugas1
echo -n "Masukan Nilai tugas 2 : "
read tugas2
echo -n "Masukan Nilai tugas 3 : "
read tugas3
echo
echo "--------------------"
echo "( Daftar Nilai Tugas 1-3 )"
echo "--------------------"
echo "Nama : $nama"
echo "NPM : $npm"
echo "Nilai tugas 1 : $tugas1"
echo "Nilai tugas 2 : $tugas2"
echo "Nilai tugas 3 : $tugas3"

total=`expr $tugas1 + $tugas2 + $tugas3`
ipk=`echo $total / 3 | bc`

echo "IPS MHS = $total / 3"
echo "IPK MHS = $ipk"

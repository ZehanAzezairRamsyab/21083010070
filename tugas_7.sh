#!/bin/bash

panjang() {
    echo "Masukkan panjang: "
    read panjang
}

lebar() {
     echo "Masukkan lebar: "
     read lebar
}

luas() {
    panjang
    lebar
    let hasil=$panjang*$lebar
    echo -e  "Luas persegi panjang : \n$hasil "
}

luas

#1/bin/bash

# deklarasi array
ditrolinux=("Mint" "Ubuntu" "Kali" "Arch" "Debian")

# random distro
let pilih=$RANDOM%5

# eksekusi
echo "saya memilih distro $pilih, ${distrolinux[$pilih]} !"

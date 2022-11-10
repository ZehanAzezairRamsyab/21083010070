from os import getpid
from time import time,sleep
from multiprocessing import cpu_count, Pool, Process

def cetak(i):
   if (i+1)%2==0:
      print(i+1, "genap - ID Process", getpid())
   else:
     print(i+1, "ganjil - ID Process", getpid())
   sleep(1)

n=int(input("Masukkan angka untuk batasan perulangan: "))

print ("SEKUENSIAL")
print (" ")
sekuensial_awal = time()
for i in range(n):
   cetak(i)
sekuensial_akhir=time()
print (" ")

print ("MULTIPROCESSING DENGAN KELAS PROCESS")
print (" ")
process_awal=time()
for i in range(n):
    p=Process(target=cetak, args=(i, ))
    p.start()
    p.join()
process_akhir=time()
print (" ")

print ("MULTIPROCESSING DENGAN KELAS POOL")
print (" ")
pool_awal=time()
pool = Pool()
pool.map(cetak,range(0,n))
pool.close()
pool_akhir=time()
print (" ")

print ("BANDIGKAN WAKTU EKSEKUSI")
print (" ")
print("Waktu eksekusi Sekuensial:", sekuensial_akhir - sekuensial_awal, "detik")
print("Waktu eksekusi multiprocessing.Process:", process_akhir - process_awal, "detik")
print("Waktu eksekusi multiprocessing.Pool:", pool_akhir - pool_awal, "detik")


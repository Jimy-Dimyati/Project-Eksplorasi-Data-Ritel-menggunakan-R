#Tentukan 10 customer mana saja yang memiliki pembelian terbesar!
#Keluarkan data dengan jenis transaksi adalah Penjualan
data_penjualan = data[data$Jenis.Transaksi=="Penjualan",]

#Lakukan fungsi aggregasi data untuk mendapatkan pembelian per customer
pembelian_pelanggan=aggregate(
             x=data_penjualan$Jumlah,
             by =list(Pelanggan = data_penjualan$Nama.Pelanggan),
             FUN = sum)

#Urutkan data pelanggan berdasarkan jumlah pembelian dari yang terbesar ke yang terkecil
pembelian_pelanggan = pembelian_pelanggan[order(-pembelian_pelanggan$x), ]

#Ambil 10 nilai tertinggi dari data diatas
head(pembelian_pelanggan, 10)

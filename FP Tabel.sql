CREATE DATABASE library;

CREATE TABLE staff (
  id_staff INT PRIMARY KEY,
  nama_staff VARCHAR(255),
  alamat_staff VARCHAR(255),
  email_staff VARCHAR(255),
  no_telp_staff VARCHAR(20)
);

CREATE TABLE pelanggan (
  id_pelanggan INT PRIMARY KEY,
  nama_pelanggan VARCHAR(255),
  no_telp VARCHAR(20),
  alamat VARCHAR(255)
);

CREATE TABLE transaksi (
  id_transaksi INT PRIMARY KEY,
  id_staff INT,
  id_pelanggan INT,
  tanggal_transaksi DATE,
  total_transaksi INT,
  FOREIGN KEY (id_staff) REFERENCES staff(id_staff),
  FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan)
);

CREATE TABLE buku (
  id_buku INT PRIMARY KEY,
  judul_buku VARCHAR(255),
  penulis VARCHAR(255),
  tahun_terbit INT,
  stok_buku INT
);

CREATE TABLE detail_transaksi (
  id_detail_transaksi INT PRIMARY KEY,
  id_transaksi INT,
  id_buku INT,
  total_buku INT,
  FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
  FOREIGN KEY (id_buku) REFERENCES buku(id_buku)
);
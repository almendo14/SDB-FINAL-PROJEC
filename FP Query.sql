-- Transaction Rollback

START TRANSACTION;

UPDATE buku
SET stok_buku = stok_buku - 6
WHERE id_buku = 450

INSERT INTO transaksi (id_transaksi, id_staff, id_pelanggan, tanggal_transaksi, total_transaksi)
VALUES ()

INSERT INTO detail_transaksi (id_detail_transaksi, id_transaksi, id_buku, total_buku)
VALUES ()
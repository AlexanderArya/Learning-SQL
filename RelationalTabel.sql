-- REFERENCES

create table transaksi ( id_transaksi int not null auto_increment primary key, 
id_barang int, id_pembeli int, tanggal date, keterangan varchar(100), 
CONSTRAINT id_barang FOREIGN KEY (id_barang) REFERENCES barang (id_barang) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT id_pembeli FOREIGN KEY (id_pembeli) REFERENCES pembeli (id_pembeli) ON DELETE RESTRICT ON UPDATE RESTRICT);
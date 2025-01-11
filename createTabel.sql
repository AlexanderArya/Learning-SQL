-- DATABASE PEGAWAI

create table Pegawai
(
  NIP varchar(5) not null primary key,
  Nama varchar(25),
  TanggalLahir date,
  KotaAsal varchar(10)
)

-- DATABASE CAMPUS
 
-- Mahasiswa
-- Dosen
-- Matakuliah
-- Jadwal
-- KST

create table Mahasiswa
(
	NIM varchar(9) not null primary key,
	Nama varchar(25) not null,
	TanggalLahir date,
	KotaAsal varchar(10)
);

create table Dosen
(
	KodeDosen varchar(5) not null primary key,
	Nama varchar(25),
	TanggalLahir date,
	KotaAsal varchar(10),
	KepalaDosen varchar(5)
);

create table Matakuliah
(
	KodeMatakuliah varchar(5) not null primary key,
	Nama varchar(25),
	SKS int
);

create table Jadwal
(
	KodeMatakuliah varchar(5) not null,
	KodeJadwal char not null,
	Hari varchar(10),
	Jam time,
	KodeRuang varchar(5),
	KodeDosen varchar(5),
	primary key(KodeMatakuliah,KodeJadwal),
    foreign key(KodeDosen) references dosen(kodeDosen),
	foreign key(KodeMatakuliah) references matakuliah(KodeMatakuliah)
);

create table KST
(
	NIM varchar(9),
	KodeMatakuliah varchar(5) not null,
	KodeJadwal char not null,
    unique(KodeMatakuliah,NIM),
	foreign key(KodeMatakuliah) REFERENCES matakuliah(KodeMatakuliah)
);

create table kategori_sks
(
	jenis varchar(10),
	sks_Min int,
	sks_max int
);



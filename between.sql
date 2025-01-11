-- Searching Operator

-- between operator

select * from pegawai WHERE NIP between '001' and '005' ORDER by NIP; 

-- wildchart % operator

select * from pegawai where nama like 'Su%'

-- wildchard _ operator

select * from pegawai where nama like '_u'

-- mencari lebih dari satu huruf cth: suryadi maka su% akan mencari depanya su dan belakangnnya terserah berapa karakter
-- mencari hanya satu huruf di depan atau belakang huruf yang di cari

-- View Operator
-- Menyimpan query agar tanpa mengquery lag
-- view (menyimpan query)


-- CREATE
CREATE VIEW kelas_a AS SELECT * FROM kst WHERE kodejadwal = 'A';
CREATE VIEW nim AS SELECT nim FROM kst WHERE kodejadwal = 'A';

-- REPLACE
-- Mengganti query di dalam view
CREATE OR REPLACE VIEW kelas_a AS SELECT * from kst WHERE kodejadwal = 'B'

-- DROP
-- Menghapus view
DROP VIEW kelas_a




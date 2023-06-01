-- Febry Billiyagi Karsidi
-- 0110222223
-- TI 02

-- Memilih Database NF Computer
USE nf_computer;

-- Menambahkan data kategori
INSERT INTO kategori VALUES(NULL, 'Design Grafis');
INSERT INTO kategori VALUES(NULL, 'Office Profesional');
INSERT INTO kategori VALUES(NULL, 'Frontend Engineer');
INSERT INTO kategori VALUES(NULL, 'Backend Engineer');

INSERT INTO materi VALUES(NULL, 'ABC001', 
'Perkenalan GIMP', 
'Pengajar memperkenalkan aplikasi editing foto GIMP', 
'2 Jam', 'Rp 250.000', 1);

INSERT INTO materi VALUES(NULL, 'ABC002', 
'Membuat persentasi dengan PowerPoint', 
'Cara membuat persentasi yang cepat dengan aplikasi powerpoint', 
'1.5 Jam', 'Rp 200.000', 2);

INSERT INTO materi VALUES(NULL, 'ABC003', 
'Perkenalan ReactJS', 
'Membuat project baru dengan ReactJS', 
'2 Jam', 'Rp 250.000', 3);

INSERT INTO materi VALUES(NULL, 'ABC004', 
'Restfull API dengan Laravel', 
'Membuat layanan API dengan framework PHP Laravel', 
'2 Jam', 'Rp 250.000', 4);


-- Menambahkan data pengajar
INSERT INTO pengajar VALUES(NULL, '9812308913', 
'Ahmad Aida', 'L', '0821332123', 'ahmad.aida@gmail.com', 
'Jl Situ bondo ABC', 'ahmad-aida.jpg', '1');

INSERT INTO pengajar VALUES(NULL, '8928010989', 
'Princess Doe', 'P', '0872616123', 'doe@gmail.com', 
'Jl ABC lingkar jati', 'doe.jpg', '2');

INSERT INTO pengajar VALUES(NULL, '6721367216', 
'Putri Diana', 'P', '08215521231', 'diana@gmail.com', 
'Komplek Kayu Hayat NO 23', 'diana.png', '3');

INSERT INTO pengajar VALUES(NULL, '0002211231', 
'Billiyagi', 'L', '08981137291', 'febry@billiyagi.space', 
'Jl Laptop Tua NO 89', 'billy.png', '4');

-- Menambahkan data peserta
INSERT INTO peserta VALUES(NULL, 'Hany Fajriah', 'P', 
'0851223213', 'hanyfaj@gmail.com', 'Jl Lokal satu dua tiga', 'han.jpg', '1');

INSERT INTO peserta VALUES(NULL, 'Alma Hidianti', 'P', 
'0867273128', 'almahi@gmail.com', 'Jl Luar dan dalam', 'han.jpg', '2');

INSERT INTO peserta VALUES(NULL, 'Billy the Kid', 'L', 
'0867273128', 'billy@gmail.com', 'Jl Seloka kamaren malam', 'billy.jpg', '3');

INSERT INTO peserta VALUES(NULL, 'Farid Abdullah', 'L', 
'0889827271', 'billy@gmail.com', 'Jl Guangzo no 23', 'farid.jpg', '4');

-- Menambahkan data penjadwalan kelas
INSERT INTO penjadwalan_kelas VALUES(NULL, 'KL001', 'TI02', 'Rabu', 
'2023-01-01', '2023-06-30', '08:00:00', '10:00:00', 1,2,1);

INSERT INTO penjadwalan_kelas VALUES(NULL, 'KL002', 'TI05', 'Senin', 
'2023-01-06', '2023-07-10', '13:00:00', '15:00:00', 2,1,3);

-- Melakukan Inner Join antar tabel kategori dan materi
SELECT materi.kode, materi.nama AS nama_materi, 
materi.deskripsi, materi.durasi, materi.biaya, kategori.nama AS kategori FROM materi 
INNER JOIN kategori ON kategori.id = materi.kategori_id;

-- Melakukan inner Join antar tabel kategori, materi, pengajar dan penjadwalan_kelas
SELECT material.kode, material.nama AS nama_materi, material.deskripsi, 
material.durasi, material.biaya, category.nama AS category_name,
lecturer.nip, lecturer.nama AS lecturer_name, lecturer.gender, 
lecturer.hp, lecturer.email, lecturer.alamat, lecturer.foto FROM penjadwalan_kelas 
INNER JOIN materi AS material ON penjadwalan_kelas.materi_id = material.id 
INNER JOIN kategori AS category ON material.kategori_id = category.id
INNER JOIN pengajar AS lecturer ON penjadwalan_kelas.pengajar_id = lecturer.id;
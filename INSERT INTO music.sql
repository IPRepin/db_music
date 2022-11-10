INSERT INTO music_genre (genre_id, name)
VALUES
(1, 'pop'),
(2, 'rock'),
(3, 'shanson'),
(4, 'disco'),
(5, 'folk')

INSERT INTO performers (performers_id, name)
VALUES
(1, 'Metallica'),
(2, 'Baskov'),
(3, 'Kirkorov'),
(4, 'Shufutinsky'),
(5, 'Kalinov mast'),
(6, 'Ariya'),
(7, 'Pesnyari'),
(8, 'ABBA')

INSERT INTO music_album (music_album_id, year_of_release, name)
VALUES
(1, '2016-01-01', 'Hardwired...To Self-Destruct'),
(2, '2009-01-01', 'Тебе одной'),
(3, '2001-01-01', 'Magico Amor'),
(4, '2007-01-01', 'Москва-Владивосток'),
(5, '2018-01-01', 'Даурия'),
(6, '2001-01-01', 'Химера'),
(7, '1994-01-01', 'Песняры-25'),
(8, '1986-01-01', 'ABBA Live')

INSERT INTO tracks (tracks_id, duration, music_album_id, name)
VALUES
(1, 191, 1, 'Hardwired'),
(2, 386, 1, 'Atlas, Rise!'),
(3, 235, 2, 'Тебе одной'),
(4, 164, 2, 'Ветер вольный'),
(5, 215, 3, 'Дива'),
(6, 231, 3, 'Мышь'),
(7, 192, 4, 'От пункта "Я" до пункта "Ты"'),
(8, 222, 4, 'Пропажа'),
(9, 179, 5, 'Вороны'),
(10, 271, 5, 'Даурия'),
(11, 279, 6, 'Химера'),
(12, 385, 6, 'Я не сошёл с ума'),
(13, 201, 7, 'Рушнiкi'),
(14, 221, 7, 'Белоруссия'),
(15, 251, 8, 'Voulez-Vous'),
(16, 212, 2, 'Моя любимая')

INSERT INTO collection (collection_id, year_of_release, name)
VALUES
(1, '2016-01-01', 'Сборник 1'),
(2, '2020-01-01', 'Сборник 2'),
(3, '2001-01-01', 'Сборник 3'),
(4, '2007-01-01', 'Сборник 4'),
(5, '2018-01-01', 'Сборник 5'),
(6, '2019-01-01', 'Сборник 6'),
(7, '1994-01-01', 'Сборник 7'),
(8, '1986-01-01', 'Сборник 8')

INSERT INTO genre_performers (genre_id, performers_id)
VALUES
(1, 2)
(1, 3)
(2, 1)
(2, 6)
(3, 4)
(4, 8)
(5, 5)
(5, 7)
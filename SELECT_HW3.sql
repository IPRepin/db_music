SELECT name, year_of_release FROM music_album
WHERE year_of_release = '2018-01-01'

SELECT name, duration FROM tracks
WHERE duration = (SELECT max(duration) FROM tracks)

SELECT name FROM tracks
WHERE duration <= 210

SELECT name FROM collection
WHERE year_of_release >= '2018-01-01' and year_of_release <= '2020-01-01'

SELECT name FROM performers
WHERE not name LIKE '%% %%'

SELECT name FROM tracks
WHERE name LIKE '%%Моя%%'
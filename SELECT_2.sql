SELECT genre_id, COUNT(performers_id) FROM genre_performers
GROUP BY genre_id;

SELECT COUNT(tracks_id) FROM tracks
WHERE music_album_id IN(
    SELECT tracks_id FROM music_album
	WHERE year_of_release BETWEEN '2019-01-01' AND '2020-01-01');

SELECT music_album_id, AVG(duration) FROM tracks
GROUP BY music_album_id;

SELECT DISTINCT p.name FROM performers AS p
LEFT JOIN album_performers AS ap ON p.performers_id = ap.performers_id
LEFT JOIN music_album AS ma ON ap.performers_id = ma.music_album_id
WHERE year_of_release < '2020-01-01';
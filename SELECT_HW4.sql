SELECT genre_id, COUNT(performers_id) FROM genre_performers
GROUP BY genre_id;

SELECT COUNT(tracks_id) FROM tracks as t
LEFT JOIN music_album as ma ON ma.music_album_id = t.music_album_id
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-01-01';

SELECT music_album_id, AVG(duration) FROM tracks
GROUP BY music_album_id;



SELECT DISTINCT p.name FROM performers AS p
LEFT JOIN album_performers AS ap ON p.performers_id = ap.performers_id
LEFT JOIN music_album AS ma ON ap.performers_id = ma.music_album_id
WHERE year_of_release < '2020-01-01';

SELECT DISTINCT c.name FROM collection AS c
LEFT JOIN performers AS p ON c.performers_id = p.performers_id
WHERE p.performers_id = 2;

SELECT DISTINCT c.name FROM collection AS c
LEFT JOIN album_performers AS ap ON c.collection_id = ap.album_performers_id
LEFT JOIN genre_performers AS gp ON ap.album_performers_id = gp.performers_id
GROUP BY c.name
HAVING COUNT(gp.performers_id) > 1;

SELECT t.name FROM tracks AS t
LEFT JOIN collection_tracks AS ct ON t.tracks_id = ct.track_id
WHERE ct.track_id IS NULL;

SELECT a.name FROM performers AS p
JOIN album_performers AS ap ON p.performers_id = ap.album_performers_id
JOIN music_album AS ma ON ap.album_performers_id = ma.music_album_id
JOIN tracks AS t ON ma.music_album_id = t.music_album_id
WHERE t.duration = (SELECT MIN(duration) FROM tracks);

SELECT DISTINCT name FROM music_album AS ma
INNER JOIN tracks AS t ON ma.music_album_id = t.music_album_id
WHERE music_album_id IN(
	SELECT COUNT(music_album_id) FROM tracks
	GROUP BY music_album_id
	ORDER BY music_album_id
	LIMIT 1);
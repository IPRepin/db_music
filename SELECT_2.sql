SELECT genre_id, COUNT(performers_id) FROM genre_performers
GROUP BY genre_id;

SELECT COUNT(tracks_id) FROM tracks
WHERE music_album_id IN(
    SELECT tracks_id FROM music_album
	WHERE year_of_release BETWEEN '2019-01-01' AND '2020-01-01');
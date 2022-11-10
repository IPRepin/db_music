CREATE TABLE public.music_genre
(
    genre_id integer NOT NULL,
    name varchar(128) unique NOT NULL,
    PRIMARY KEY (genre_id)
);

CREATE TABLE public.performers
(
    performers_id integer NOT NULL,
    name varchar(128) unique NOT NULL,
    PRIMARY KEY (performers_id)
);

CREATE TABLE public.music_album
(
    music_album_id integer NOT NULL,
    name varchar(128) unique NOT NULL,
    year_of_release date NOT NULL,
    PRIMARY KEY (music_album_id)
);

CREATE TABLE public.tracks
(
    tracks_id integer NOT NULL,
    name varchar(128) unique NOT NULL,
    duration integer NOT NULL,
    music_album_id integer REFERENCES music_album(music_album_id),
	PRIMARY KEY (tracks_id)
);
CREATE TABLE public.collection
(
    collection_id integer NOT NULL,
    name varchar(128) unique NOT NULL,
    year_of_release date NOT NULL,
    PRIMARY KEY (collection_id)
);

CREATE TABLE public.genre_performers
(
	CONSTRAINT genre_performers_id PRIMARY KEY(genre_id, performers_id),
    genre_id integer REFERENCES music_genre(genre_id) NOT NULL,
    performers_id integer REFERENCES performers(performers_id) NOT NULL
);
CREATE TABLE public.album_performers
(
	CONSTRAINT album_performers_id PRIMARY KEY(album_id, performers_id),
    album_id integer REFERENCES music_album(music_album_id) NOT NULL,
    performers_id integer REFERENCES performers(performers_id) NOT NULL
);
CREATE TABLE public.collection_tracks
(
	CONSTRAINT collection_tracks_id PRIMARY KEY(collection_id, tracks_id),
    collection_id integer REFERENCES collection(collection_id) NOT NULL,
    tracks_id integer REFERENCES tracks(tracks_id) NOT NULL
);
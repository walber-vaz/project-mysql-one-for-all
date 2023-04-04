CREATE TABLE SpotifyClone.favorite_songs (
    person_id INT NOT NULL,
    music_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES SpotifyClone.people(id),
    FOREIGN KEY (music_id) REFERENCES SpotifyClone.musics(id),
    PRIMARY KEY(person_id, music_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorite_songs (person_id, music_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);

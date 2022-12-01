DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artistas(
      id_artista INT PRIMARY KEY AUTO_INCREMENT,
      artista VARCHAR(255) NOT NULL
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      id_album INT PRIMARY KEY AUTO_INCREMENT,
      album VARCHAR(255) NOT NULL,
      id_artista INT NOT NULL,
      FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
   ) ENGINE = InnoDB;
   
  CREATE TABLE SpotifyClone.musicas(
      id_musica INT PRIMARY KEY AUTO_INCREMENT,
      musica VARCHAR(255) NOT NULL,
      duracao INT NOT NULL,
      ano_lancamento YEAR NOT NULL,
      id_album INT NOT NULL,
      FOREIGN KEY (id_album) REFERENCES albuns(id_album)
  ) ENGINE = InnoDB;
  
  CREATE TABLE SpotifyClone.planos(
      id_plano INT PRIMARY KEY AUTO_INCREMENT,
      nome_plano VARCHAR(255) NOT NULL,
      valor DOUBLE NOT NULL
  ) ENGINE = InnoDB;
  
  CREATE TABLE SpotifyClone.usuarios(
      id_usuario INT PRIMARY KEY AUTO_INCREMENT,
      nome_usuario VARCHAR(255) NOT NULL,
      idade INT NOT NULL,
      id_plano INT NOT NULL,
      FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
  ) ENGINE = InnoDB;
  
  CREATE TABLE SpotifyClone.seguindo_artistas(
      id_usuario INT NOT NULL,
      id_artista INT NOT NULL,
      PRIMARY KEY (id_usuario, id_artista),
      FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
      FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
  ) ENGINE = InnoDB;
  
  CREATE TABLE SpotifyClone.historico(
      id_usuario INT NOT NULL,
      id_musica INT NOT NULL,
      data_reproducao TIMESTAMP NOT NULL,
      PRIMARY KEY (id_usuario, id_musica),
      FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
      FOREIGN KEY (id_musica) REFERENCES musicas(id_musica)
  ) ENGINE = InnoDB;

    INSERT INTO SpotifyClone.artistas (artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');
    
    INSERT INTO SpotifyClone.albuns (album, id_artista)
  VALUES
	  ('Renaissance', 1),
	  ('Jazz', 2),
	  ('Hot Space', 2),
	  ('Falso Brilhante', 3),
	  ('Vento de Maio', 3),
	  ('QVVJFA?', 4),
	  ('Somewhere Far Beyond', 5),
	  ('I Put A Spell On You', 6);
    
    INSERT INTO SpotifyClone.musicas (musica, duracao, ano_lancamento, id_album)
  VALUES
    ('BREAK MY SOUL', 279 , 2022, 1),
    ('VIRGO’S GROOVE', 369 , 2022, 1),
    ('ALIEN SUPERSTAR', 116 , 2022, 1),
    ('Don’t Stop Me Now', 203 , 1978, 2),
    ('Under Pressure', 152 , 1982, 3),
    ('Como Nossos Pais', 105 , 1998, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207 , 2001, 5),
    ('Samba em Paris', 267 , 2003, 6),
    ('The Bard’s Song', 244 , 2007, 7),
    ('Feeling Good', 100 , 2012, 8);
    
    INSERT INTO SpotifyClone.planos (nome_plano, valor)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);
    
    INSERT INTO SpotifyClone.usuarios (nome_usuario, idade, id_plano)
  VALUES
    ('Barbara Liskov', 82, 1),
    ('Robert Cecil Martin', 58, 1),
    ('Ada Lovelace', 37, 2),
    ('Martin Fowler', 46, 2),
    ('Sandi Metz', 58, 2),
    ('Paulo Freire', 19, 3),
    ('Bell Hooks', 26, 3),
    ('Christopher Alexander', 85, 4),
    ('Judith Butler', 45, 4),
    ('Jorge Amado', 58, 4);
    
    INSERT INTO SpotifyClone.seguindo_artistas (id_usuario, id_artista)
  VALUES
    (1, 1), (1, 2), (1, 3), (2, 1), (2, 3), (3, 2),
    (4, 4), (5, 5), (5, 6), (6, 6), (6, 1), (7, 6),
    (9, 3), (10, 2);
    
    INSERT INTO SpotifyClone.historico (id_usuario, id_musica, data_reproducao)
  VALUES
    (1, 8, '2022-02-28 10:45:55'), (1, 2, '2020-05-02 05:30:35'), (1, 10, '2020-03-06 11:22:33'),
    (2, 10, '2022-08-05 08:05:17'), (2, 7, '2020-01-02 07:40:33'), (3, 10, '2020-11-13 16:55:13'),
    (3, 2, '2020-12-05 18:38:30'), (4, 8, '2021-08-15 17:10:10'), (5, 8, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'), (6, 7, '2017-01-24 00:31:17'), (6, 1, '2017-10-12 12:35:20'),
    (7, 4, '2011-12-15 22:30:49'), (8, 4, '2012-03-17 14:56:41'), (9, 9, '2022-02-24 21:14:22'),
    (10, 3, '2015-12-13 08:30:22');
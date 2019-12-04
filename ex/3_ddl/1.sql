CREATE DATABASE extrasolar;

\c extrasolar

CREATE TABLE stars (
  id            serial      PRIMARY KEY,
  name          varchar(25) NOT NULL UNIQUE,
  distance      integer     NOT NULL CHECK (distance > 0),
  spectral_type char(1)     CHECK (spectral_type ~ '[OBAFGKM]'),
  companions    integer     NOT NULL CHECK (companions >= 0)
);

CREATE TABLE planets (
  id            serial      PRIMARY KEY,
  designation   char(1)     CHECK (designation ~* '[a-z]'),
  mass          integer
);
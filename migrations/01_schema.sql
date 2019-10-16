CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE properties (
  id INTEGER PRIMARY KEY NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,

  title TEXT NOT NULL,
  description TEXT,
  thumbnail_photo_url TEXT NOT NULL,
  cover_photo_url TEXT NOT NULL,
  cost_per_night INTEGER NOT NULL DEFAULT 0,
  parking_spaces INTEGER NOT NULL DEFAULT 0,
  number_of_bathrooms INTEGER NOT NULL DEFAULT 0,
  number_of_bedrooms INTEGER NOT NULL DEFAULT 0,

  country TEXT NOT NULL,
  city TEXT NOT NULL,
  province TEXT NOT NULL,
  street TEXT NOT NULL,
  post_code TEXT NOT NULL,

  active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE reservations (
  id INTEGER PRIMARY KEY NOT NULL,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
  id INTEGER PRIMARY KEY NOT NULL,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL DEFAULT 0,
  message TEXT
);


-- CREATE TABLE guest_reviews (
--   id INTEGER PRIMARY KEY NOT NULL,
--   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
--   rating SMALLINT,
--   message TEXT
-- );


CREATE TABLE rates (
  id INTEGER PRIMARY KEY NOT NULL,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL,
  cost_per_night SMALLINT NOT NULL,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE
);
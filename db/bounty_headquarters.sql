DROP TABLE IF EXISTS bountys;

CREATE TABLE bountys(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  bounty_value INT2,
  last_known_location VARCHAR(255),
  favourite_weapon VARCHAR(255)
  );

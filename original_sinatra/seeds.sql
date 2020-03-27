drop TABLE if EXISTS users;
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name CHAR(32),
    password CHAR(32)
);
INSERT INTO users (name, password) VALUES ('tsubasa', 12345678);
INSERT INTO users (name, password) VALUES ('maho', 11111111);
INSERT INTO users (name, password) VALUES ('yuya', 1234567890);

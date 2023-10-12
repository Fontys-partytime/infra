CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE users
(
    Id uuid PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    Username text NOT NULL,
    Password text NOT NULL,
    Email text NOT NULL,
    Role text NOT NULL DEFAULT 'User'
);
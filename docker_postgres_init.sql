CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE party
(
    Id uuid PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    UserId uuid NOT NULL,
    Title text,
    Description text,
    Starts timestamptz NOT NULL,
    Ends timestamptz NOT NULL,
    Location text,
    Budget decimal
);

CREATE TABLE joined
(
    Id uuid PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    Partyid uuid NOT NULL,
    Userid uuid NOT NULL,
    Username text,
    Accepted bool
);

INSERT INTO party(UserId, Title, Description, Starts, Ends, Location, Budget) VALUES
 ('aa7d7aa4-c055-4d8c-a7c8-0f4f26bfeb34', 'Party at Tommie', 'Come join the party now!', '2023-05-05 19:30:30.12345Z', '2020-05-05 23:00:00.12345Z', 'Examplestreet 123, 1234AB', 120.99);
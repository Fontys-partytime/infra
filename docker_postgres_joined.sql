CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE joined
(
    Id uuid PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    Partyid uuid NOT NULL,
    Userid uuid NOT NULL,
    Username text,
    Joineddate timestamptz,
    Accepteddate timestamptz,
    Accepted boolean
);

INSERT INTO joined(Partyid, Userid, Username, Joineddate, Accepteddate, Accepted) VALUES
 ('9c80d23f-4d14-46ca-94e7-d3f37b316aa5','aa7d7aa4-c055-4d8c-a7c8-0f4f26bfeb34', 'Tommie Olislagers', '2023-05-05 19:30:30.12345Z', '2020-05-05 23:00:00.12345Z', true);
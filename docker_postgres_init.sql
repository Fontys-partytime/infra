CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE party
(
    Id uuid PRIMARY KEY DEFAULT UUID_GENERATE_V4(),
    Userid uuid NOT NULL,
    Title text,
    Description text,
    Starts timestamptz NOT NULL,
    Ends timestamptz NOT NULL,
    Amount decimal,
    Paymentlink text,
    Linkexperation timestamptz NOT NULL,
);

INSERT INTO party(Userid, Title, Description, Starts, Ends, Amount, Paymentlink, Linkexperation) VALUES
 ('aa7d7aa4-c055-4d8c-a7c8-0f4f26bfeb34', 'Party at Tommie', 'Come join the party now!', '2023-05-05 19:30:30.12345Z', 10, 'paymentapp.com', '2020-05-05 23:00:00.12345Z');
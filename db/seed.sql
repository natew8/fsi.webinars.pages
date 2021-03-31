CREATE TABLE fsi_webinar_attendees (
id SERIAL PRIMARY KEY,
first_name VARCHAR (250),
last_name VARCHAR (250),
phone VARCHAR (30),
email VARCHAR (150),
webinar_id INT,
schedule INT,
presenter VARCHAR,
yrs_to_retire VARCHAR,
focus TEXT[],
comments VARCHAR
);

-- Breaking up the FOCUS array
SELECT x.*
FROM(SELECT first_name, unnest(focus) as webinar_focus from fsi_webinar_attendees WHERE presenter='Nathan Gates')x 
DROP TABLE IF EXISTS basics.app_events;
CREATE TABLE basics.app_events(
-- UUID - 

id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
event_name TEXT NOT NULL, 
--JSONB
metadata JSONB DEFAULT '{}'::JSONB,

created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_events(event_name, metadata)
VALUES
('sign_up','{"browser":"chrome"}'),
('sign_in','{"user":"benny"}');

SELECT * FROM basics.app_events;

-- providing type for meta data - select metadata
-- Select the event name and extract the browser value from JSONB as text.
-- AS browser renames the output column to browser.
-- The ? operator checks whether the metadata JSONB contains the top-level key 'browser'.
-- Only events containing the 'browser' key are returned.
SELECT event_name ,metadata ->>'browser' AS browser 
FROM basics.app_events 
WHERE metadata ? 'browser'
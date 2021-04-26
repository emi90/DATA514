BULK INSERT Carriers FROM 'carriers.csv'
WITH (ROWTERMINATOR = '0x0a',
DATA_SOURCE = 'data514blob', FORMAT = 'CSV', CODEPAGE = 65001, 
FIRSTROW = 1, TABLOCK);

BULK INSERT Months FROM 'months.csv'
WITH (ROWTERMINATOR = '0x0a',
DATA_SOURCE = 'data514blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding
FIRSTROW=1,TABLOCK);

BULK INSERT Weekdays FROM 'weekdays.csv'
WITH (ROWTERMINATOR = '0x0a',
DATA_SOURCE = 'data514blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding
FIRSTROW=1,TABLOCK);

-- Import for the large Flights table
-- This last import might take a little under 10 minutes on the provided server settings

BULK INSERT Flights FROM 'flights-small.csv'
WITH (ROWTERMINATOR = '0x0a',
DATA_SOURCE = 'data514blob', FORMAT='CSV', CODEPAGE = 65001, --UTF-8 encoding
FIRSTROW=1,TABLOCK);
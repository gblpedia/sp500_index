
-- Use the `ref` function to select from other models

select SYMBOL, DATE, OPEN, HIGH, LOW, CLOSE, VOLUME, ADJCLOSE, MA5, MA20,MA60, NAME, COUNTRY, EXCHANGE_CODE, SECTOR, INDUSTRY
from {{ ref('my_first_dbt_model') }}
WHERE COUNTRY = 'United States'
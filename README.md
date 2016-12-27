Ruby: 2.3.3

Rails: 5.0.1

DB: PostgreSQL 9.5.5

Для настройки подключения к бд в simple_online_bank/config/database.yml
указать:
```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5

development:
  <<: *default
  database: your_db_name
  username: your_username
  password: your_password
  
test:
  <<: *default
  database: your_db_name
  username: your_username
  password: your_password
```

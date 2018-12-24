FROM mysql:5.7
# no password
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

# put the file to container
COPY setup.sh /mysql/setup.sh
COPY data/mysql/data_schema.sql /mysql/data_schema.sql 
COPY data/mysql/data_film.sql /mysql/data_film.sql 
COPY data/mysql/data_people.sql /mysql/data_people.sql 
COPY data/mysql/data_planet.sql /mysql/data_planet.sql 
COPY data/mysql/data_species.sql /mysql/data_species.sql 
COPY data/mysql/data_starship.sql /mysql/data_starship.sql 
COPY data/mysql/data_vehicle.sql /mysql/data_vehicle.sql 
COPY data/mysql/priviledges.sql /mysql/priviledges.sql
COPY sql/init.sql /mysql/init.sql
# command
CMD ["sh", "/mysql/setup.sh"]
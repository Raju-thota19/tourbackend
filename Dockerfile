# Use the official MySQL image as the base image

FROM mysql:latest
 
# Environment variables for setting up databases

ENV MYSQL_DATABASE_1 tourplanservicedb

ENV MYSQL_DATABASE_2 placeservicedb

ENV MYSQL_DATABASE_3 userservicedb

ENV MYSQL_DATABASE_4 feedbackservicedb

ENV MYSQL_DATABASE_5 adminservicedb

ENV MYSQL_ROOT_USER root

ENV MYSQL_ROOT_PASSWORD root
 
# Copy the initialization script to the Docker container

COPY init.sql /docker-entrypoint-initdb.d/s

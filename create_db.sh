#!/bin/bash

# Set the database name and SQL script filenames
DB_NAME="educational_platform"
SCHEMA_FILE="database.sql"
DATA_FILE="dummy_data_insert.sql"
DB_USER="paalso"
DB_HOST="localhost"
DB_PORT="5432"

# Drop the database if it exists
echo "Dropping database $DB_NAME if it exists..."
psql -U $DB_USER -h $DB_HOST -p $DB_PORT -c "DROP DATABASE IF EXISTS $DB_NAME;"

# Create the database
echo "Creating database $DB_NAME..."
psql -U $DB_USER -h $DB_HOST -p $DB_PORT -c "CREATE DATABASE $DB_NAME;"

# Apply the schema to the database
echo "Applying schema from $SCHEMA_FILE..."
psql -U $DB_USER -h $DB_HOST -p $DB_PORT -d $DB_NAME -f $SCHEMA_FILE

# Apply the data to the database
echo "Inserting data from $DATA_FILE..."
psql -U $DB_USER -h $DB_HOST -p $DB_PORT -d $DB_NAME -f $DATA_FILE

echo "Database $DB_NAME has been created and populated successfully!"

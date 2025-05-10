Instructions for running:

-- install intellij community edition
-- install tomcat version 9 for your device
-- install maven plugin and smarttomcat plugin from marketplace on Intellij

-- git clone THIS REPO as a maven project

-- Change on the DB connection file the proper JDBC_URL, JDBC_USER, JDBC_PASSWORD for your mysql
-- Open MySQL instance and run the SQL scripts create_schema.sql then intialize_date.sql
-- Click on the maven tab, click on clean, compile package to build the project
-- Add a run configuration, selected edit configurations add configuration. Select the version of tomcat that you downloaded from the web
-- Click run, 
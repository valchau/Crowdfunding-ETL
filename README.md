# Crowdfunding-ETL
## Purpose
This project is designed to teach us about using Python pandas (DataFrames and csv files), along with creating an Entity_Diagram design for a database, and then using the PostgreSQL environment to implement this database consisting of tables representing the 6 starting data files in csv format. We are given the scenario that we have a crowdfunding dataset consisting of 6 csv formatted files, with data about the crowdfunding projects. For each project, the data includes an identification number, the company name, a description of the project, the project's goal amount, the amount pledged so far, the project outcome so far, the number of backers of the project,  and includes category-and-subcategory combinations to help us differentiate between the projects.

## Analysis
Our initial tasks, described in the Module 8 unit, direct us to examine the given csv files to understand the fields they contain, what might be a unique field that would be a primary key once each file is loaded into a relational database, and also to recognize any other fields in a given data file that could connect this data to other tables in the database (aka foreign keys in a table). I also examined the given data in each file to see if the values were all numeric, and if so, are they integers or money (needing a decimal point), and if not numeric data, what type of alphanumeric text data they might represent. Strings or alphanumeric text data in a database is often refereed to as 'VARCHAR' data and if possible, I try to consider if the data has a maximum length. This can save some space, if I can limit the size of some databse fields to 10 characters or 50 characters, etc. I notice that there are two date fields and uploading those into DATE format fields means we can get information about how long a compaign lasts by using math operations on the launch and end dates. This is great. 

## Summary of process overall
Using Anaconda's Jupyter Notebook with Python and pandas 
•	Analyzed and then extracted data from 6 separate csv formatted files into Python's DataFrames. I used Python's json and pandas libraries to transform the data into separate columns (fields) since the files were not actually Excel formatted but were comma separated values in json formats. Also used Python's list comprehension feature to help process each line of the input data so it could be split and worked with.
* Split the name field into first and last name separate fields, dropping the name field, and then exported a new set of the data, containing the infomration about the backers of each crowdfunding campaign into a new file that could be used later.
Using an online website, created a new database structure containing tables with fields as defined by the given input csv files, along with creating an Entity Relationship Diagram and a schema filefrom the design.
•	Created a PostgreSQL database and tables by using an ERD

[Design of new Relational Database based on given input data]("crowdfunding_db_relationships.png")


•	Loaded CSV files into a database
•	Ran queries to retrieve data and generate reports for stakeholders


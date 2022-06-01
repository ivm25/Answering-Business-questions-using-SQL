# Answering-Business-questions-using-SQL
***


## Portfolio: Answering Busineess questions on Chinook database using SQL


    1. Aims of the project
    
    a. Explore the Chinook database using SQL and provide the store with some actionable insights on the outlined Business problems.
    b. Can we take an informed decision about the rekey venue generating sources. 
    c. Communicate to the business teams using charts and usable table results to come up with effective business strategies.

    The ERD of the Chinook database can be referenced here:
![ERD_chinook](https://user-images.githubusercontent.com/44321100/171297555-cb119a2a-a0d6-4e8b-85bb-34f7943ff84a.png)

-   Charts: All charts are created in Power BI and are available for reference in the .pbix file, attached in the repository.
***
    Business problems:
***
- *Business Problem 1*: Helping the Business team at Chinook to understand which Genres sell the most, in order to help the new deal with a record label. Focus Territory: USA

![image](https://user-images.githubusercontent.com/44321100/169695976-04d99ac0-e4ae-442f-a418-7363f62c8f2c.png)

- *Business Problem 2*: Identify which employees are bringing in most revenue sales.

- *Business Problem 3*: Understand the track/album purchases from different countries.
![image](https://user-images.githubusercontent.com/44321100/170893970-749fa676-ce3f-409e-8e8f-e00a5d779c2b.png)

    
2. *Source of Data*

    https://github.com/lerocha/chinook-database/tree/master/ChinookDatabase/DataSources

3. *Future Work*:
***
*It will be good to answer the questions below using custom queries*

    a. Which artist is used in the most playlists?

    b. How many tracks have been purchased vs not purchased?

    c. Is the range of tracks in the store reflective of their sales popularity?

    d. Do protected vs non-protected media types have an effect on popularity?


4. *Files/installations and their descriptions*
***

    a. .ipynb file : Jupyter file that forms the main analysis file. Comprises of all the *SQL* queries.

    b. .sql files : Individual .sql files that can run independently, with an absolute path to the chinook.sqlite database

    c. .sqlite database: Chinook database (sqlite) that is being analysed in this project.

    d. .pbix file : Power BI file that has a connection to the attached database and also consists of the key charts. To make it work, install the sqlite ODBC driver, using this link: http://www.ch-werner.de/sqliteodbc/

    e. ERD png: Generated using dBeaver community edition.


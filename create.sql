CREATE TABLE PUBLISHER 
(NAME VARCHAR (20) PRIMARY KEY, 
PHONE BIGINT, 
ADDRESS VARCHAR (20)); 

CREATE TABLE BOOK 
(BOOK_ID INTEGER PRIMARY KEY, 
TITLE VARCHAR (20), 
PUB_YEAR VARCHAR (20), 
PUBLISHER_NAME VARCHAR(20) REFERENCES PUBLISHER (NAME) ON DELETE CASCADE);

CREATE TABLE BOOK_AUTHORS 
(AUTHOR_NAME VARCHAR (20), 
BOOK_ID INTEGER REFERENCES BOOK (BOOK_ID) ON DELETE CASCADE, 
PRIMARY KEY (BOOK_ID, AUTHOR_NAME)); 

CREATE TABLE LIBRARY_BRANCH 
(BRANCH_ID INTEGER PRIMARY KEY, 
BRANCH_NAME VARCHAR (50), 
ADDRESS VARCHAR (50)); 

CREATE TABLE BOOK_COPIES 
(NO_OF_COPIES INTEGER, 
BOOK_ID INTEGER REFERENCES BOOK (BOOK_ID) ON DELETE CASCADE, 
BRANCH_ID INTEGER REFERENCES LIBRARY_BRANCH (BRANCH_ID) ON DELETE  CASCADE, 
PRIMARY KEY (BOOK_ID, BRANCH_ID));

CREATE TABLE CARD 
(CARD_NO INTEGER PRIMARY KEY); 

CREATE TABLE BOOK_LENDING 
(DATE_OUT DATE, 
DUE_DATE DATE, 
BOOK_ID INTEGER REFERENCES BOOK (BOOK_ID) ON DELETE CASCADE, 
BRANCH_ID INTEGER REFERENCES LIBRARY_BRANCH (BRANCH_ID) ON DELETE CASCADE, 
CARD_NO INTEGER REFERENCES CARD (CARD_NO) ON DELETE CASCADE, 
PRIMARY KEY (BOOK_ID, BRANCH_ID, CARD_NO)); 

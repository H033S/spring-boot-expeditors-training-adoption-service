DROP TABLE IF EXISTS ADOPTION;
DROP TABLE IF EXISTS PET;
DROP TABLE IF EXISTS ADOPTER;

CREATE TABLE PET(
                    ID SERIAL PRIMARY KEY,
                    BREED VARCHAR(20),
                    TYPE VARCHAR(20),
                    NAME VARCHAR(200)
);



CREATE TABLE ADOPTER(
                        ID SERIAL PRIMARY KEY,
                        NAME VARCHAR(200),
                        PHONE_NUMBER VARCHAR(15)
);


CREATE TABLE ADOPTION(

                         ID SERIAL PRIMARY KEY,
                         ADOPTION_DATE DATE NOT NULL,
                         PET_ID SERIAL,
                         ADOPTER_ID SERIAL,

                         FOREIGN KEY (PET_ID)     REFERENCES PET(ID),
                         FOREIGN KEY (ADOPTER_ID) REFERENCES ADOPTER(ID)
);
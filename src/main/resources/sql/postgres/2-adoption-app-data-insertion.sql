SET ROLE LARKU;

INSERT INTO PET (BREED, TYPE, NAME) VALUES ('POODLE',  'DOG', 'Suki');
INSERT INTO PET (BREED, TYPE, NAME) VALUES ('SIAMESE', 'CAT', 'Bing');
INSERT INTO PET (BREED, TYPE, NAME) VALUES ('SIAMESE', 'CAT', 'Bang');

INSERT INTO ADOPTER (NAME, PHONE_NUMBER) VALUES ('Alexander Delgado', '123-123-4567');
INSERT INTO ADOPTER (NAME, PHONE_NUMBER) VALUES ('Jennifer Lopez', '123-123-4567');

INSERT INTO ADOPTION (ADOPTION_DATE, PET_ID, ADOPTER_ID) VALUES ('2024-12-10', 1, 1);
INSERT INTO ADOPTION (ADOPTION_DATE, PET_ID, ADOPTER_ID) VALUES ('2024-12-10', 2, 1);
INSERT INTO ADOPTION (ADOPTION_DATE, PET_ID, ADOPTER_ID) VALUES ('2024-12-10', 3, 2);

SELECT
        ADPTN.adoption_date     AS "ADOPTION DATE"
        ,ADTER.name             AS "ADOPTER NAME"
        ,ADTER.phone_number     AS "ADOPTER PHONE NUMBER"
        ,PET.name               AS "PET NAME"
        ,PET.breed              AS "PET BREED"
        ,PET.type               AS "PET TYPE"
FROM 
        PUBLIC.adoption ADPTN
        INNER JOIN PUBLIC.adopter ADTER ON ADTER.id = ADPTN.adopter_id
        INNER JOIN PUBLIC.pet     PET   ON PET.id = ADPTN.pet_id;

SELECT
    ADOPTER.ID              AS "ADOPTER_ID",
    ADOPTER.NAME            AS "ADOPTER_NAME",
    ADOPTER.PHONE_NUMBER    AS "ADOPTER_PHONE_NUMBER",
    PET.ID                  AS "PET_ID",
    PET.NAME                AS "PET_NAME",
    PET.TYPE                AS "PET_TYPE",
    PET.BREED               AS "PET_BREED",
    ADOPTION.ID             AS "ADOPTION_ID",
    ADOPTION.ADOPTION_DATE  AS "ADOPTION_DATE"
FROM ADOPTION
    INNER JOIN ADOPTER ON ADOPTER.ID = ADOPTION.ADOPTER_ID
    INNER JOIN PET ON PET.ID = ADOPTION.PET_ID
WHERE ADOPTION.ID = ?


SELECT ID, NAME, PHONE_NUMBER FROM ADOPTAPP.PUBLIC.ADOPTER

DROP ROLE IF EXISTS LARKU;

CREATE ROLE LARKU WITH
        LOGIN
        PASSWORD 'LARKU'  
        CREATEDB 
        CREATEROLE;
        
SET ROLE LARKU;

CREATE DATABASE ADOPTIONAPP;
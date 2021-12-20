--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: univ; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA univ;


ALTER SCHEMA univ OWNER TO postgres;

SET search_path = univ, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Studenten; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE Studenten (
    MatrNr integer NOT NULL,
    Name character varying(20) NOT NULL,
    Semester integer NOT NULL
);


ALTER TABLE univ.Studenten OWNER TO postgres;

--
-- Name: vorlesungen; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE vorlesungen (
   VorlNr integer NOT NULL,
    Titel character varying(20) NOT NULL,
    SWS integer NOT NULL,
    gelesenVon integer NOT NULL,
    CONSTRAINT vorlesung_VorInr_check CHECK ((VorlNr > 0))
);


ALTER TABLE univ.vorlesungen OWNER TO postgres;

--
-- Name: assistenten; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE assistenten (
    PersNr integer NOT NULL,
    Name character varying(30) NOT NULL,
    Fachgebiet character varying(20) NOT NULL,
    Boss character varying(20) NOT NULL, 
    CONSTRAINT assistenten_PersNr_check CHECK	((PersNr > 0))

);


ALTER TABLE univ.assistenten OWNER TO postgres;

--
-- Name: pruefen; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE pruefen (
      MatrNr integer NOT NULL,
      VorlNr integer NOT NULL,
      PersNr integer NOT NULL,    
      Note integer  NOT NULL
);


ALTER TABLE univ.pruefen OWNER TO postgres;

--
-- Name: hoeren; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE hoeren (
    MatrNr integer NOT NULL,
    VorlNr integer  NOT NULL
    );


ALTER TABLE univ.hoeren OWNER TO postgres;

--
-- Name: voraussetzen; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE voraussetzen (
    Vorgaenger integer NOT NULL,
    Nachfolger integer  NOT NULL
    );


ALTER TABLE univ.voraussetzen OWNER TO postgres;
--
-- Name: professoren; Type: TABLE; Schema: univ; Owner: postgres; Tablespace: 
--

CREATE TABLE professoren (
    PersNr integer NOT NULL,
    Name character varying(30) NOT NULL,
    Rang character varying(5) NOT NULL,
    Raum integer NOT NULL
    );


ALTER TABLE univ.professoren OWNER TO postgres;
INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (24002, 'Xenokrates', 18); 
 
INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (25403, 'Jonas', 12); 
 
INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (26120, 'Fichte', 10); 

INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (26830, 'Aristoxenos', 8); 
 
INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (27550, 'Schopenhauer', 6); 

INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (28106, 'Carnap', 3); 
 
INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (29120, 'Theophrastos', 2); 
 
INSERT INTO Studenten(MatrNr, Name, Semester) 
VALUES (29555, 'Feuerbach', 2); 
 
INSERT INTO Studenten(MatrNr, Name,Semester) 
VALUES(21233, 'Ahmad',7) 


INSERT INTO Studenten(MatrNr, Name,Semester) 
VALUES(21222, 'Yassin',6) 

INSERT INTO Studenten(MatrNr, Name,Semester) 
VALUES(23333, 'Fatima',9) 



INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2125, 'Sokrates', 'W3', 226); 

INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2126, 'Russel', 'W3', 232);  
 
INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2127, 'Kopernikus', 'W2', 310); 
 
INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2133, 'Popper', 'W2', 052); 
 
INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2134, 'Augustinus', 'W2', 309); 
 
INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2136, 'Curie', 'W3', 036); 
 
INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2137, 'Kant', 'W3', 007); 

INSERT INTO professoren(PersNr, Name, Rang, Raum) 
VALUES (2138, 'Hichem', 'W3', 007); 
 
 
 
INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3002, 'Platon', 'Ideenlehre', 2125); 
 
INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3003, 'Aristoteles', 'Syllogistik', 2125); 
 
INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3004, 'Wittgenstein', 'Sprachtheorie', 2126); 
 
INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3005, 'Rhetikus', 'Planetenbewegung', 2127); 
 
INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3006, 'Newton', 'Keplersche Gesetze', 2127); 
 
INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3007, 'Spinoza', 'Gott und Natur', 2134); 

INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3008, 'Lara', 'Science', 2138);

INSERT INTO assistenten(PersNr, Name, Fachgebiet, Boss) 
VALUES (3009, 'Sara', 'Why cs is hard', 2138);  


 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5001, 'Grundzuege', 4, 2137);

INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5041, 'Ethik', 4, 2125);
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5043, 'Erkenntnistheorie', 3, 2126);
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5049, 'Maeeutik', 2, 2125);
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (4052, 'Logik', 4, 2125);
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5052, 'Wissenschaftstheorie', 3, 2126); 
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5216, 'Bioethik', 2, 2126); 
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5259, 'Der Wiener Kreis', 2, 2133); 
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (5022, 'Glaube und Wissen', 2, 2134); 
 
INSERT INTO vorlesungen(VorlNr, Titel, SWS, gelesenVon) 
VALUES (4630, 'Die 3 Kritiken', 4, 2137); 


 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (26120, 5001); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (27550, 5001); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (27550, 4052);

INSERT INTO hoeren(MatrNr,VorlNr)
VALUES(21233,5041)

INSERT INTO hoeren(MatrNr,VorlNr)
VALUES(21233,5001)

INSERT INTO hoeren(MatrNr,VorlNr)
VALUES(21233,4052) 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (28106, 5041); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (28106, 5052); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (28106, 5216); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (28106, 5259); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (29120, 5001); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (29120, 5041); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (29120, 5049); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (29555, 5022); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (25403, 5022);  
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (29555, 5001);  

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (21222, 5001); 
 
INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (21222, 4052);  

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5001); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5043);

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5049);

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 4052);

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5052); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5216);

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5259);

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5022);

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 4630); 

INSERT INTO hoeren(MatrNr, VorlNr) 
VALUES (23333, 5041); 


 
 
 
INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5001, 5041); 
 
INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5001, 5043); 
 
INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5001, 5049); 
 
INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5041, 5216);  

INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5043, 5052);  

INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5041, 5052); 
 
INSERT INTO voraussetzen(Vorgaenger, Nachfolger) 
VALUES (5052, 5259); 
 


INSERT INTO pruefen(MatrNr, VorlNr, PersNr, Note) 
VALUES (28106, 5001, 2126, 1.0);

INSERT INTO pruefen(MatrNr, VorlNr, PersNr, Note) 
VALUES (25403, 5041, 2125, 2.0);

INSERT INTO pruefen(MatrNr, VorlNr, PersNr, Note) 
VALUES (27550, 4630, 2137, 2.0);

INSERT INTO pruefen(MatrNr, VorlNr, PersNr, Note) 
VALUES (21233, 4630, 2137, 2.0);

INSERT INTO pruefen(MatrNr, VorlNr, PersNr, Note)
VALUES (21233 ,5001,2126,2.3); 


--
-- Name: pk_student; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY student
    ADD CONSTRAINT pk_student PRIMARY KEY CLUSTERED (MatrNr);


--
-- Name: pk_vorlesungen; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vorlesungen
    ADD CONSTRAINT pk_vorlesungen PRIMARY KEY (VorlNr);


--
-- Name: pk_assistenten; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY assistenten
    ADD CONSTRAINT pk_assistenten PRIMARY KEY  (PersNr);


--
-- Name: pk_pruefen; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pruefen
    ADD CONSTRAINT pk_pruefen PRIMARY KEY  (MatrNr,VorlNr);


--
-- Name: pk_hoeren; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY hoeren
    ADD CONSTRAINT pk_hoeren PRIMARY KEY  (MatrNr,VorlNr);


--
-- Name: pk_voraussetzen; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY voraussetzen
    ADD CONSTRAINT pk_voraussetzen PRIMARY KEY  (Vorgaenger,Nachfolger);


--
-- Name: pk_professoren; Type: CONSTRAINT; Schema: univ; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY professoren
    ADD CONSTRAINT pk_professoren PRIMARY KEY  (PersNr);


--
-- Name: fk_professoren_persNr; Type: FK CONSTRAINT; Schema: univ; Owner: postgres
--

ALTER TABLE ONLY professoren
    ADD CONSTRAINT ffk_professoren_persNr FOREIGN KEY (PersNr) REFERENCES vorlesungen(gelesen_von);


--
-- Name: fk_vorlesung_vorl; Type: FK CONSTRAINT; Schema: univ; Owner: postgres
--

ALTER TABLE ONLY vorlesungen
    ADD CONSTRAINT fk_vorlesung_vorl FOREIGN KEY (VorlNr) REFERENCES professoren(Raum);




--
-- Name: univ; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA univ FROM PUBLIC;
REVOKE ALL ON SCHEMA univ FROM postgres;
GRANT ALL ON SCHEMA univ TO postgres;


--
-- Name: Studenten; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE Studenten FROM PUBLIC;
REVOKE ALL ON TABLE Studenten FROM postgres;
GRANT ALL ON TABLE Studenten TO postgres;


--
-- Name: vorlesungen; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE vorlesungen FROM PUBLIC;
REVOKE ALL ON TABLE vorlesungen FROM postgres;
GRANT ALL ON TABLE vorlesungen TO postgres;


--
-- Name: assistenten; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE assistenten FROM PUBLIC;
REVOKE ALL ON TABLE assistenten FROM postgres;
GRANT ALL ON TABLE assistenten TO postgres;


--
-- Name: pruefen; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE pruefen FROM PUBLIC;
REVOKE ALL ON TABLE pruefen FROM postgres;
GRANT ALL ON TABLE pruefen TO postgres;


--
-- Name: hoeren; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE hoeren FROM PUBLIC;
REVOKE ALL ON TABLE hoeren FROM postgres;
GRANT ALL ON TABLE hoeren TO postgres;


--
-- Name: voraussetzen; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE voraussetzen FROM PUBLIC;
REVOKE ALL ON TABLE voraussetzen FROM postgres;
GRANT ALL ON TABLE voraussetzen TO postgres;


--
-- Name: professoren; Type: ACL; Schema: univ; Owner: postgres
--

REVOKE ALL ON TABLE professoren FROM PUBLIC;
REVOKE ALL ON TABLE professoren FROM postgres;
GRANT ALL ON TABLE professoren TO postgres;


--
-- PostgreSQL database dump complete
--


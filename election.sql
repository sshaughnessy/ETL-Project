CREATE TABLE county (
    county_id VARCHAR(5) PRIMARY KEY NOT NULL
    county VARCHAR(30) NOT NULL
);

CREATE TABLE census (
    household_income VARCHAR(9) NOT NULL
    population VARCHAR(9) NOT NULL
    median_age VARCHAR(3) NOT NULL
    per_capita_income VARCHAR(9) NOT NULL
    poverty_count VARCHAR(9) NOT NULL
    county_id VARCHAR(5) NOT NULL
    census_year VARCHAR(5) NOT NULL
    county VARCHAR(30) NOT NULL
    FOREIGN KEY (county_id) REFERENCES county (county_id)
    FOREIGN KEY (county) REFERENCES county (county)
    PRIMARY KEY (county_id, census_year)
);

CREATE TABLE candidates10 (
    candidateID VARCHAR(5) PRIMARY KEY NOT NULL
    CanFirstName VARCHAR(25) NOT NULL
    CanLastName VARCHAR(25) NOT NULL
    PartyName VARCHAR (15) NOT NULL
    OfficeName VARCHAR(215) NOT NULL
);

CREATE TABLE votes10 (
    candidateID VARCHAR(5) PRIMARY KEY NOT NULL
    County VARCHAR(30) NOT NULL
    Votes int NOT NULL
    FOREIGN KEY (County) REFERENCES census (county)
    FOREIGN KEY (candidateID) REFERENCES candidates10 (candidateID)
);

CREATE TABLE ballotgroups10 (
    BallotGroup VARCHAR(2) NOT NULL
    OfficeName VARCHAR(215) NOT NULL
    FOREIGN KEY (OfficeName) REFERENCES candidates10 (OfficeName)
);

CREATE TABLE candidates14 (
    candidateID VARCHAR(5) PRIMARY KEY NOT NULL
    CanFirstName VARCHAR(25) NOT NULL
    CanLastName VARCHAR(25) NOT NULL
    PartyName VARCHAR (15) NOT NULL
    OfficeName VARCHAR(215) NOT NULL
);

CREATE TABLE votes14 (
    candidateID VARCHAR(5) PRIMARY KEY NOT NULL
    County VARCHAR(30) NOT NULL
    Votes int NOT NULL
    FOREIGN KEY (County) REFERENCES census (county)
    FOREIGN KEY (candidateID) REFERENCES candidates14 (candidateID)
);

CREATE TABLE ballotgroups14 (
    BallotGroup VARCHAR(2) NOT NULL
    OfficeName VARCHAR(215) NOT NULL
    FOREIGN KEY (OfficeName) REFERENCES candidates14 (OfficeName)
);

CREATE TABLE candidates18 (
    candidateID VARCHAR(5) PRIMARY KEY NOT NULL
    CanFirstName VARCHAR(25) NOT NULL
    CanLastName VARCHAR(25) NOT NULL
    PartyName VARCHAR (15) NOT NULL
    OfficeName VARCHAR(215) NOT NULL
);

CREATE TABLE votes18 (
    candidateID VARCHAR(5) PRIMARY KEY NOT NULL
    County VARCHAR(30) NOT NULL
    Votes int NOT NULL
    FOREIGN KEY (County) REFERENCES census (county)
    FOREIGN KEY (candidateID) REFERENCES candidates18 (candidateID)
);

CREATE TABLE ballotgroups18 (
    BallotGroup VARCHAR(2) NOT NULL
    OfficeName VARCHAR(215) NOT NULL
    FOREIGN KEY (OfficeName) REFERENCES candidates18 (OfficeName)
);


-- TUTORIAL 1

-- QUESTION 4
CREATE TABLE Student (
 StudentNum VARCHAR(10) NOT NULL,
 Name VARCHAR(20),
 Address VARCHAR(30),
 Gender CHAR(1) CHECK(Gender IN ('M', 'F')),
 Age INTEGER,
 Next_of_Kin VARCHAR(20),
 PRIMARY KEY (StudentNum)
);

CREATE TABLE Lecturer (
    LectNum VARCHAR(10),
    Name VARCHAR(20),
    Address VARCHAR(50),
    Gender CHAR(1) CHECK(Gender IN ('M', 'F')),
    Age INTEGER,
    Office VARCHAR(4),
    Ext_num INTEGER,
    PRIMARY KEY (LectNum)
);

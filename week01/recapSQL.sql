-- TUTORIAL 1

-- QUESTION 4a
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
    LectNum VARCHAR(10) NOT NULL,
    Name VARCHAR(20),
    Address VARCHAR(50),
    Gender CHAR(1) CHECK(Gender IN ('M', 'F')),
    Age INTEGER,
    Office VARCHAR(4),
    Ext_num INTEGER,
    PRIMARY KEY (LectNum)
);

CREATE TABLE Course (
    CourseNum VARCHAR(6) NOT NULL,
    Tile VARCHAR(30),
    Book VARCHAR(30),
    Room VARCHAR(15),
    PRIMARY KEY (CourseNum)
);

CREATE TABLE Registered (
    StudentNum VARCHAR(10) NOT NULL,
    CourseNum VARCHAR(6) NOT NULL,
    Grade INTEGER,
    PRIMARY KEY (StudentNum, CourseNum),
    FOREIGN KEY (StudentNum) REFERENCES Student,
    FOREIGN KEY (CourseNum) REFERENCES Course
);

CREATE TABLE Teach (
    LectNum VARCHAR(10) NOT NULL,
    CourseNum VARCHAR(6) NOT NULL,
    Day VARCHAR(10),
    Time VARCHAR(11),
    Year VARCHAR(4),
    PRIMARY KEY (LectNum, CourseNum),
    FOREIGN KEY (LectNum) REFERENCES Lecturer,
    FOREIGN KEY (CourseNum) REFERENCES Course
);

-- QUESTION 4b
INSERT INTO Student VALUES (
'1111111111','Anne Patel', '12 Northampton Square EC1V', 'F', 20, 'Peter Patel',
'1111111112', 'John White', '15 Main Road, London, SW1', 'M', 21, 'Mary White',
'1111111113', 'Tracy Blue', '20 High Street, London, SW4', 'F', 19, 'John Blue'
);

INSERT INTO Lecturer VALUES (
'2222222222', 'Mary Brown', '16 Main Street, London N19', 'F', 40, 'A112', 8345,
'2222222223', 'Peter Right', '20 High Street, London, SE13', 'M', 35, 'B145', 8456
);

INSERT INTO Course VALUES (
'IN3001', 'Advanced Databases', 'Introduction to Databases', 'A220',
'INM370', 'Advanced Database Technologies', 'Object-Oriented Databases', 'A220',
'IN3007', 'Final Year project', NULL, 'Great Hall'
);

INSERT INTO Registered VALUES (
'1111111111', 'IN3001', 60,
'1111111111', 'IN3007', 50,
'1111111112', 'INM370', 72,
'1111111113', 'IN3001', 65,
'1111111113', 'IN3007', 70
);

INSERT INTO Teach VALUES (
'2222222222', 'INM370', 'Thursday', '9:00-11:00 ', '2020',
'2222222222', 'IN3001', 'Monday', '10:00-12:00', '2020',
'2222222223', 'IN3007', 'Tuesday', '14:00-16:00', '2021'
);

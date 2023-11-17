REM   Script: Hw_q2
REM   To get the count for each class need to group them together, and for sorting did order by

/* Executed using livesql.oracle.com */  /*Creating table required*/  create TABLE Enrollment( 


    SID INTEGER NOT NULL, 


    ClassName VARCHAR(20) NOT NULL, 


    GRADE VARCHAR(1) NOT NULL, 


    PRIMARY KEY (SID,ClassName) 


); 


INSERT INTO Enrollment VALUES (123,'Synthesis algorithms','A');

INSERT INTO Enrollment VALUES (123,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (123,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (662,'Sound mixing','B');

INSERT INTO Enrollment VALUES (662,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (662,'Electronic Music','A');

INSERT INTO Enrollment VALUES (662,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (345,'MIDI controllers','A');

INSERT INTO Enrollment VALUES (345,'Electronic Music','B');

INSERT INTO Enrollment VALUES (345,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (555,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (555,'Electronic Music','B');

INSERT INTO Enrollment VALUES (213,'Electronic Music','A');

select * from Enrollment;  /* To get the count for each class need to group them together, and for sorting did order by*/ 
 
Select  ClassName ,count(SID) as Total from Enrollment GROUP BY ClassName ORDER BY Total DESC;

create TABLE Enrollment( 
    SID INTEGER NOT NULL, 
    ClassName VARCHAR(20) NOT NULL, 
    GRADE VARCHAR(1) NOT NULL, 
    PRIMARY KEY (SID,ClassName) 
);

INSERT INTO Enrollment VALUES (123,'Synthesis algorithms','A');

INSERT INTO Enrollment VALUES (123,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (123,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (662,'Sound mixing','B');

INSERT INTO Enrollment VALUES (662,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (662,'Electronic Music','A');

INSERT INTO Enrollment VALUES (662,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (345,'MIDI controllers','A');

INSERT INTO Enrollment VALUES (345,'Electronic Music','B');

INSERT INTO Enrollment VALUES (345,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (555,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (555,'Electronic Music','B');

INSERT INTO Enrollment VALUES (213,'Electronic Music','A');

select * from Enrollment;  /* To get the count for each class need to group them together, and for sorting did order by*/ 
 
Select  ClassName ,count(SID) as Total from Enrollment GROUP BY ClassName ORDER BY Total DESC;

create TABLE Enrollment( 
    SID INTEGER NOT NULL, 
    ClassName VARCHAR(20) NOT NULL, 
    GRADE VARCHAR(1) NOT NULL, 
    PRIMARY KEY (SID,ClassName) 
);

INSERT INTO Enrollment VALUES (123,'Synthesis algorithms','A');

INSERT INTO Enrollment VALUES (123,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (123,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (662,'Sound mixing','B');

INSERT INTO Enrollment VALUES (662,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (662,'Electronic Music','A');

INSERT INTO Enrollment VALUES (662,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (345,'MIDI controllers','A');

INSERT INTO Enrollment VALUES (345,'Electronic Music','B');

INSERT INTO Enrollment VALUES (345,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (555,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (555,'Electronic Music','B');

INSERT INTO Enrollment VALUES (213,'Electronic Music','A');

select * from Enrollment;

Select  ClassName ,count(SID) as Total from Enrollment GROUP BY ClassName  
ORDER BY Total DESC;

drop table Enrollment;

create TABLE Enrollment( 
    SID INTEGER NOT NULL, 
    ClassName VARCHAR(20) NOT NULL, 
    GRADE VARCHAR(1) NOT NULL, 
    PRIMARY KEY (SID,ClassName) 
);

INSERT INTO Enrollment VALUES (123,'Synthesis algorithms','A');

INSERT INTO Enrollment VALUES (123,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (123,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (662,'Sound mixing','B');

INSERT INTO Enrollment VALUES (662,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (662,'Electronic Music','A');

INSERT INTO Enrollment VALUES (662,'MIDI controllers','B');

INSERT INTO Enrollment VALUES (345,'MIDI controllers','A');

INSERT INTO Enrollment VALUES (345,'Electronic Music','B');

INSERT INTO Enrollment VALUES (345,'EDM synthesis','A');

INSERT INTO Enrollment VALUES (555,'EDM synthesis','B');

INSERT INTO Enrollment VALUES (555,'Electronic Music','B');

INSERT INTO Enrollment VALUES (213,'Electronic Music','A');

select * from Enrollment;

Select  ClassName ,count(SID) as Total from Enrollment GROUP BY ClassName  
ORDER BY Total DESC;


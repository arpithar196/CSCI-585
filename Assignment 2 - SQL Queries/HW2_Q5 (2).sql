REM   Script: Hw_q5
REM   --Essentially a division operation Query groups by instructor name and counts how many subjects within required course list and checks if his total 
--to list of number of courses to be taught, in this case 3

drop table Intstructor;

Create  TABLE Instructor(  
    INS_NAME VARCHAR(10) NOT NULL,  
    INS_CLASS VARCHAR(20) NOT NULL,  
    PRIMARY KEY(INS_NAME,INS_CLASS)  
);

Insert INTO Instructor VALUES ('Aleph','MIDI controllers');

Insert INTO Instructor VALUES ('Aleph','Sound mixing');

Insert INTO Instructor VALUES ('Aleph','Synthesis algorithms');

Insert INTO Instructor VALUES ('Bit','Sound mixing');

Insert INTO Instructor VALUES ('Bit','Electronic Music');

Insert INTO Instructor VALUES ('CRC','EDM synthesis');

Insert INTO Instructor VALUES ('CRC','Electronic Music');

Insert INTO Instructor VALUES ('DAT','MIDI controllers');

Insert INTO Instructor VALUES ('DAT','EDM synthesis');

Insert INTO Instructor VALUES ('DAT','Electronic Music');

Insert INTO Instructor VALUES ('EMSCR','MIDI controllers');

Insert INTO Instructor VALUES ('EMSCR','EDM synthesis');

Insert INTO Instructor VALUES ('EMSCR','Electronic Music');

Insert INTO Instructor VALUES ('EMSCR','Synthesis algorithms');

drop table subject;

create table subject( 
    classname VARCHAR(20) NOT NULL, 
    PRIMARY KEY(classname) 
);

Insert into  subject values ('Electronic Music');

Insert into  subject values ('MIDI controllers');

Insert into  subject values ('EDM synthesis');

Select Ins_Name from Instructor where Ins_class  IN 
    (select classname from subject) GROUP BY Ins_Name HAVING Count(Ins_Class)=(select count(classname) from subject);


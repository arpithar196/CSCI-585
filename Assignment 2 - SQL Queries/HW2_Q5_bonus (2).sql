REM   Script: Hw2_Q5_bonus1
REM   Find the common professor who teaches all courses by using intersect operation 

drop table Instructor;

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

Select Ins_Name from Instructor where Ins_class = 'Electronic Music' 
INTERSECT 
Select Ins_Name from Instructor where Ins_class = 'MIDI controllers' 
INTERSECT 
Select Ins_Name from Instructor where Ins_class = 'EDM synthesis';


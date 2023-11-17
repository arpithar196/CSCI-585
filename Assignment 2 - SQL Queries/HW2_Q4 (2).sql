REM   Script: HW_Q4
REM   --Created and populated the Enrolment table (which has instructor, course taught and number of students) Created another table with Professor and his hourly rate For the query- joining the table based on Instructor name as the common column, and getting number of students for each of his/her subjects
--Ordering in descending order and fetching the first column to get highest bonus

drop table Instructors;

CREATE TABLE Instructors ( 
  Instructor VARCHAR(50), 
  HourlyRate DECIMAL(10, 2) 
);

INSERT INTO Instructors VALUES ('Aleph', 5.00);

INSERT INTO Instructors VALUES ('Bit', 10.00);

INSERT INTO Instructors VALUES ('CRC', 12.50);

INSERT INTO Instructors VALUES ('Dat', 18.75);

INSERT INTO Instructors VALUES ('Emscr', 7.50);

drop table enrollments;

CREATE TABLE Enrollments ( 
  Instructor VARCHAR(50), 
  Subject VARCHAR(50), 
  StudentCount INT 
);

INSERT INTO Enrollments VALUES ('Aleph', 'MIDI controllers', 15);

INSERT INTO Enrollments VALUES('Aleph', 'Sound mixing', 20);

INSERT INTO Enrollments VALUES  ('Aleph', 'Synthesis algorithms', 10);

INSERT INTO Enrollments VALUES ('Bit', 'EDM synthesis', 25);

INSERT INTO Enrollments VALUES ('Bit', 'Electronic Music Fundamentals', 30);

INSERT INTO Enrollments VALUES ('Bit', 'Sound mixing', 15);

INSERT INTO Enrollments VALUES  ('CRC', 'EDM synthesis', 20);

INSERT INTO Enrollments VALUES ('CRC', 'Electronic Music Fundamentals', 20);

INSERT INTO Enrollments VALUES ('Dat', 'MIDI controllers', 20);

INSERT INTO Enrollments VALUES ('Dat', 'EDM synthesis', 20);

INSERT INTO Enrollments VALUES  ('Dat', 'Electronic Music Fundamentals', 15);

INSERT INTO Enrollments VALUES ('Emscr', 'MIDI controllers', 10);

INSERT INTO Enrollments VALUES('Emscr', 'Synthesis algorithms', 15);

INSERT INTO Enrollments VALUES('Emscr', 'Electronic Music Fundamentals', 20);

INSERT INTO Enrollments VALUES ('Emscr', 'EDM synthesis', 15);

SELECT Instructors.Instructor, HourlyRate * SUM(StudentCount) * 0.1 AS bonus 
  FROM Instructors 
  INNER JOIN Enrollments ON Instructors.Instructor = Enrollments.Instructor WHERE Enrollments.Subject IN (select distinct(subject) from Enrollments) 
  GROUP BY Instructors.Instructor, Instructors.HourlyRate ORDER BY bonus DESC FETCH first 1 ROWS ONLY 
 
 
   
;


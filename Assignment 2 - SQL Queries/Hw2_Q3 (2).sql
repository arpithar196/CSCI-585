REM   Script: Hw_q3
REM   Basic Select query to list all PIDS having Step = 0 and Status completed, Then eliminate the PID's that have Step = 1 and Status completed. Checking if step =1 is sufficient as mentioned CWCW cannot occur in the table 

drop table projects;

CREATE TABLE projects  
(  
PID INT NOT NULL,  
STEP INT NOT NULL,  
STATUS VARCHAR(1),  
PRIMARY KEY(PID,Step));

INSERT INTO projects VALUES (100,0,'C');

INSERT INTO projects VALUES (100,1,'W');

INSERT INTO projects VALUES (100,2,'W');

INSERT INTO projects VALUES (201,0,'C');

INSERT INTO projects VALUES (201,1,'C');

INSERT INTO projects VALUES (333,0,'W');

INSERT INTO projects VALUES (333,1,'W');

INSERT INTO projects VALUES (333,2,'W');

INSERT INTO projects VALUES (333,3,'W');

Select PID from projects where Status = 'C' and Step =0 AND PID NOT IN (Select PID from projects where Status ='C' and STEP = 1);


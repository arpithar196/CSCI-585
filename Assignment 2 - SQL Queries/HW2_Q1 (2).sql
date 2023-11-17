REM   Script: Hw2_q1
REM   Create table where start Time > endgame and don't allow duplicate bookings

drop TABLE ProjectRoom1HrSlotBookings;

CREATE TABLE ProjectRoom1HrSlotBookings 
(roomNum INTEGER NOT NULL, 
day DATE NOT NULL, 
slotStartTime INT NOT NULL, 
groupName CHAR(10) NOT NULL, 
PRIMARY KEY (roomNum, day, slotStartTime), 
check(slotstartTime <=23));


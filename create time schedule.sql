CREATE TABLE Task (
    Id serial PRIMARY KEY,
    Name VARCHAR(50) UNIQUE not null,
    Description VARCHAR(255) null
);
CREATE TABLE Operant (
    Id serial PRIMARY KEY,
    Name VARCHAR(50) UNIQUE not null,
    Password VARCHAR(50) not null,
    Description VARCHAR(255) null
);
CREATE TABLE Schedule (
    Id serial PRIMARY KEY,
    Date date not null, 
    TimeStart time not null,
    TimeFinish time not null,
    TaskId serial not null, 
    OperantId serial not null,
);

-----Tables relations---

alter table Schedule
add CONSTRAINT FK_Task
        FOREIGN KEY(TaskId) 
	    REFERENCES Task(Id)
	    ON DELETE SET NULL;
		
alter table Schedule
add CONSTRAINT FK_Operant
        FOREIGN KEY(OperantId) 
	    REFERENCES Operant(Id)
	    ON DELETE SET NULL; 

-----Operant-----
INSERT INTO public.operant(name, password, description)	VALUES ('Olga', 'somePwd', null);
INSERT INTO public.operant(name, password, description)	VALUES ('Sergejs', 'someOtherPwd', 'user');

-----Schedule-----
INSERT INTO public.schedule(date, timestart, timefinish, taskid, operantid)	VALUES ('2021-10-12','7:00','7:30',1,1);
INSERT INTO public.schedule(date, timestart, timefinish, taskid, operantid)	VALUES ('2021-10-12','7:30','8:00',2,1);
INSERT INTO public.schedule(date, timestart, timefinish, taskid, operantid)	VALUES ('2021-10-12','8:00','12:00',3,1);
INSERT INTO public.schedule(date, timestart, timefinish, taskid, operantid)	VALUES ('2021-10-12','12:30','16:30',4,1);


---Select---
SELECT 
	public.operant.name,
	public.task.name,
	date, 
	timestart, 
	timefinish

	FROM public.schedule
		join public.task on public.task.Id = public.schedule.taskid 
		join public.operant on public.operant.Id = public.schedule.OperantId 
		;
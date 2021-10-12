CREATE TABLE Users (
                       user_id SERIAL PRIMARY KEY,
                       firstName VARCHAR(100) NOT NULL,
                       lastName VARCHAR(100) UNIQUE NOT NULL);

CREATE TABLE Tasks (
                       task_id SERIAL PRIMARY KEY,
                       task_tag VARCHAR(100) NOT NULL,
                       description VARCHAR(255) NOT NULL);

CREATE TABLE Works (
                       work_id SERIAL PRIMARY KEY,
                       work_date TIMESTAMP NOT NULL,
                       timeStart TIMESTAMP NOT NULL,
                       timeFinish TIMESTAMP NOT NULL,
                       user_id INT
                           REFERENCES Users(user_id),
                       task_id INT
                           REFERENCES Tasks(task_id));


DROP TABLE Works;
DROP TABLE Users;
DROP TABLE Tasks;

INSERT INTO Users (user_id, firstName, lastName) VALUES (1, 'Marilyn', 'Monroe');
INSERT INTO Users (user_id, firstName, lastName) VALUES (2, 'Abraham', 'Lincoln');
INSERT INTO Users (user_id, firstName, lastName) VALUES (3, 'Bill', 'Gates');
INSERT INTO Users (user_id, firstName, lastName) VALUES (4, 'Muhammad', 'Ali');
INSERT INTO Users (user_id, firstName, lastName) VALUES (5, 'Elvis', 'Presley');
INSERT INTO Users (user_id, firstName, lastName) VALUES (6, 'Albert', 'Einstein');
INSERT INTO Users (user_id, firstName, lastName) VALUES (7, 'Paul', 'McCartney');
INSERT INTO Users (user_id, firstName, lastName) VALUES (8,'Queen', 'Victoria');
INSERT INTO Users (user_id, firstName, lastName) VALUES (9, 'Leonardo', 'da Vinci');
INSERT INTO Users (user_id, firstName, lastName) VALUES (10, 'Vincent', 'Van Gogh');


INSERT INTO Tasks (task_id, task_tag, description) VALUES (1, 'Coffee', 'Drink some coffee.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (2, 'Travel', 'Travel to Rome.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (3, 'Article', 'Write an article.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (4, 'Clean home', 'Make a general cleaning of all rooms an kitchen.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (5, 'Email', 'Write an email to Jhon.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (6, 'Birthday', 'To congratulate my dear friend with birthday.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (7, 'Dentist', 'Make an appointment to dentist.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (8, 'Pie', 'To cook a pie with apples.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (9, 'Walk', 'Make 10000 steps today.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (10, 'Kitten', 'Buy a food for pets.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (11, 'Cinema', 'Visit cinema next friday.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (12, 'Call', 'Call to mom after work.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (13, 'Halloween', 'To invite friends for a Halloween party');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (14, 'Bar', 'Call friend and hangout in some nice bar.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (15, 'Code', 'Write an SQL script with JOINs.');
INSERT INTO Tasks (task_id, task_tag, description) VALUES (16, 'Learn', 'Learn some new programming language.');


INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (1, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 1, 16);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (2, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 2, 1);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (3, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 3, 7);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (4, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 4, 13);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (5, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 5, 2);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (6, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 6, 11);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (7, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 7, 10);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (8, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 8, 9);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (9, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 9, 4);
INSERT INTO Works (work_id, work_date, timeStart, timeFinish, user_id, task_id) VALUES (10, current_timestamp, current_timestamp, current_timestamp + (60 * interval '1 minute'), 10, 3);


--- INNER JOIN --
SELECT
    Users.firstName,
    Users.lastName,
    Tasks.task_tag,
    Tasks.description,
    work_date,
    timeStart,
    timeFinish
FROM Works
         JOIN Tasks ON Tasks.task_id = Works.task_id
         JOIN Users ON Users.user_id = Works.user_id
;


--- RIGHT JOIN ---
SELECT
    Tasks.task_tag,
    Tasks.description,
    work_date,
    timeStart,
    timeFinish
FROM Works
        RIGHT JOIN Tasks
                   ON Tasks.task_id = Works.task_id
;

--- LEFT JOIN ---
SELECT
    Tasks.task_tag,
    Tasks.description,
    work_date,
    timeStart,
    timeFinish
FROM Works
        LEFT JOIN Tasks
                   ON Tasks.task_id = Works.task_id
;

--- FULL OUTER JOIN ---
SELECT
    Users.firstName,
    Users.lastName,
    Tasks.task_tag,
    Tasks.description,
    work_date,
    timeStart,
    timeFinish
FROM Works
        FULL OUTER JOIN Tasks
                        ON Tasks.task_id = Works.task_id
        FULL OUTER JOIN Users
                        ON Users.user_id = Works.user_id
;
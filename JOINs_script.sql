CREATE TABLE Users (
                       user_id SERIAL PRIMARY KEY,
                       firstName VARCHAR(100),
                       lastName VARCHAR(100));

CREATE TABLE Tasks (
                       task_id SERIAL PRIMARY KEY,
                       task_tag VARCHAR(100),
                       description VARCHAR(255));

CREATE TABLE Works (
                       work_id SERIAL PRIMARY KEY,
                       work_date TIMESTAMP,
                       timeStart TIMESTAMP,
                       timeFinish TIMESTAMP,
                       user_id INT
                           REFERENCES Users(user_id),
                       task_id INT
                           REFERENCES Tasks(task_id));

DROP TABLE Works;
DROP TABLE Users;
DROP TABLE Tasks;

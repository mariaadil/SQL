--CREATE DATABASE dbproject;

--CREATE TABLE casetable (case_id INT PRIMARY KEY, case_num INT, case_name VARCHAR(100), case_description VARCHAR(190), case_status VARCHAR(255), client_id INT, attorney_id INT,FOREIGN KEY (client_id) REFERENCES clienttables(client_id), FOREIGN KEY (attorney_id) REFERENCES attorneytables(attorney_id));

--INSERT INTO casetable (case_id, case_num, case_name, case_description, case_status, client_id, attorney_id)
--VALUES 
--  (1, 1001, 'Case 1', 'Description of Case 1', 'Active', 1, 1),
--  (2, 1002, 'Case 2', 'Description of Case 2', 'Active', 2, 2),
--  (3, 1003, 'Case 3', 'Description of Case 3', 'Inactive', 1, 3),
--  (4, 1004, 'Case 4', 'Description of Case 4', 'Active', 3, 1),
--  (5, 1005, 'Case 5', 'Description of Case 5', 'Active', 2, 2),
--  (6, 1006, 'Case 6', 'Description of Case 6', 'Inactive', 3, 3),
--  (7, 1007, 'Case 7', 'Description of Case 7', 'Active', 1, 1),
--  (8, 1008, 'Case 8', 'Description of Case 8', 'Inactive', 2, 2);

--SELECT * FROM casetable;

--CREATE TABLE clienttables(client_id INT PRIMARY KEY, client_name varchar(100), client_address varchar(120),client_contact_num varchar(255),client_email varchar(123));

--INSERT INTO clienttables (client_id, client_name, client_address, client_contact_num, client_email)
--VALUES 
--  (113, 'Client 1', 'Address 1', '1234567890', 'client1@example.com'),
--  (245, 'Client 2', 'Address 2', '2345678901', 'client2@example.com'),
--  (399, 'Client 3', 'Address 3', '3456789012', 'client3@example.com');

--SELECT * FROM clienttables;

--CREATE TABLE attorneytabless(attorney_id INT PRIMARY KEY, attorney_name varchar(234), attorney_specialization varchar(209), attorney_email varchar(200), attorney_contact_num varchar(200)); 

--INSERT INTO attorneytabless (attorney_id, attorney_name, attorney_specialization, attorney_email, attorney_contact_num)
--VALUES 
--  (1, 'Attorney 1', 'Specialization 1', 'attorney1@example.com', '1234567890'),
--  (2, 'Attorney 2', 'Specialization 2', 'attorney2@example.com', '2345678901'),
--  (3, 'Attorney 3', 'Specialization 3', 'attorney3@example.com', '3456789012');

--SELECT * FROM attorneytabless;

--CREATE TABLE documenttable (doc_id INT PRIMARY KEY,client_id INT,FOREIGN KEY (client_id) REFERENCES clienttables(client_id),doc_name VARCHAR(100),doc_type VARCHAR(100), doc_path VARCHAR(100), doc_version VARCHAR(100),created_table VARCHAR(100),created_by VARCHAR(299));

--INSERT INTO documenttable (doc_id, client_id, doc_name, doc_type, doc_path, doc_version, created_table, created_by)
--VALUES 
--  (1, 1, 'Document 1', 'Type 1', '/path/to/document1', '1.0', 'Table 1', 'Creator 1'),
--  (2, 2, 'Document 2', 'Type 2', '/path/to/document2', '2.0', 'Table 2', 'Creator 2'),
--  (3, 3, 'Document 3', 'Type 3', '/path/to/document3', '1.0', 'Table 1', 'Creator 1'),
--  (4, 1, 'Document 4', 'Type 1', '/path/to/document4', '1.1', 'Table 1', 'Creator 2'),
--  (5, 2, 'Document 5', 'Type 2', '/path/to/document5', '2.1', 'Table 2', 'Creator 3'),
--  (6, 3, 'Document 6', 'Type 3', '/path/to/document6', '1.2', 'Table 1', 'Creator 2'),
--  (7, 1, 'Document 7', 'Type 1', '/path/to/document7', '1.0', 'Table 1', 'Creator 1'),
--  (8, 2, 'Document 8', 'Type 2', '/path/to/document8', '2.2', 'Table 2', 'Creator 3');

--SELECT * FROM documenttable;

--CREATE TABLE communicationtable ( comm_id INT PRIMARY KEY,case_id INT,FOREIGN KEY (case_id) REFERENCES casetable(case_id),sender_id INT,FOREIGN KEY (sender_id) REFERENCES attorneytables(attorney_id),recipient_id INT,FOREIGN KEY (recipient_id) REFERENCES attorneytables(attorney_id),comm_message VARCHAR(200), comm_date VARCHAR(255));

--INSERT INTO communicationtable (comm_id, case_id, sender_id, recipient_id, comm_message, comm_date)
--VALUES 
--  (1, 1, 1, 2, 'Message 1', '2023-07-15'),
--  (2, 2, 2, 1, 'Message 2', '2023-07-16'),
--  (3, 3, 1, 3, 'Message 3', '2023-07-17'),
--  (4, 4, 3, 2, 'Message 4', '2023-07-18'),
--  (5, 5, 2, 3, 'Message 5', '2023-07-19'),
--  (6, 6, 3, 1, 'Message 6', '2023-07-20'),
--  (7, 7, 1, 2, 'Message 7', '2023-07-21'),
--  (8, 8, 2, 3, 'Message 8', '2023-07-22');

--SELECT * FROM communicationtable;

--CREATE TABLE tasktable(task_id INT PRIMARY KEY, case_id INT, FOREIGN KEY (case_id) REFERENCES casetable (case_id), task_description varchar(200), attorney_id INT, FOREIGN KEY (attorney_id) REFERENCES attorneytabless(attorney_id), task_deadline varchar(200),task_status varchar(200));

--INSERT INTO tasktable (task_id, case_id, task_description, attorney_id, task_deadline, task_status)
--VALUES 
--  (1, 1, 'Task 1', 1, '2023-07-31', 'Incomplete'),
--  (2, 2, 'Task 2', 2, '2023-08-01', 'Complete'),
--  (3, 3, 'Task 3', 3, '2023-08-02', 'Incomplete'),
--  (4, 4, 'Task 4', 1, '2023-08-03', 'Complete'),
--  (5, 5, 'Task 5', 2, '2023-08-04', 'Incomplete'),
--  (6, 6, 'Task 6', 3, '2023-08-05', 'Complete'),
--  (7, 7, 'Task 7', 1, '2023-08-06', 'Incomplete'),
--  (8, 8, 'Task 8', 2, '2023-08-07', 'Complete');

--SELECT* FROM tasktable;

--CREATE TABLE calendartable(event_id INT PRIMARY KEY, case_id INT, FOREIGN KEY (case_id) REFERENCES casetable (case_id), event_title varchar(255),event_description varchar(255), start_dates varchar(255),end_date varchar(255));

--INSERT INTO calendartable (event_id, case_id, event_title, event_description, start_dates, end_date)
--VALUES 
--  (1, 1, 'Event 1', 'Description of Event 1', '2023-08-01', '2023-08-02'),
--  (2, 2, 'Event 2', 'Description of Event 2', '2023-08-03', '2023-08-04'),
--  (3, 3, 'Event 3', 'Description of Event 3', '2023-08-05', '2023-08-06'),
--  (4, 4, 'Event 4', 'Description of Event 4', '2023-08-07', '2023-08-08'),
--  (5, 5, 'Event 5', 'Description of Event 5', '2023-08-09', '2023-08-10'),
--  (6, 6, 'Event 6', 'Description of Event 6', '2023-08-11', '2023-08-12'),
--  (7, 7, 'Event 7', 'Description of Event 7', '2023-08-13', '2023-08-14'),
--  (8, 8, 'Event 8', 'Description of Event 8', '2023-08-15', '2023-08-16');

--SELECT * FROM calendartable;

--CREATE TABLE caseresearch(research_id INT PRIMARY KEY, case_id INT, FOREIGN KEY (case_id) REFERENCES casetable(case_id),research_title varchar(300),research_description varchar(400), research_notes varchar(255),research_date varchar(200));

--INSERT INTO caseresearch (research_id, case_id, research_title, research_description, research_notes, research_date)
--VALUES 
--  (1, 1, 'Research 1', 'Description of Research 1', 'Notes for Research 1', '2023-07-15'),
--  (2, 2, 'Research 2', 'Description of Research 2', 'Notes for Research 2', '2023-07-16'),
--  (3, 3, 'Research 3', 'Description of Research 3', 'Notes for Research 3', '2023-07-17'),
--  (4, 4, 'Research 4', 'Description of Research 4', 'Notes for Research 4', '2023-07-18'),
--  (5, 5, 'Research 5', 'Description of Research 5', 'Notes for Research 5', '2023-07-19'),
--  (6, 6, 'Research 6', 'Description of Research 6', 'Notes for Research 6', '2023-07-20'),
--  (7, 7, 'Research 7', 'Description of Research 7', 'Notes for Research 7', '2023-07-21'),
--  (8, 8, 'Research 8', 'Description of Research 8', 'Notes for Research 8', '2023-07-22');

--SELECT* FROM caseresearch;

--CREATE TABLE usertable(users_id INT PRIMARY KEY, user_names varchar(255),user_password varchar(255),user_role varchar(255));

--INSERT INTO usertable (users_id, user_names, user_password, user_role)
--VALUES 
--  (1, 'User 1', 'password123', 'Admin'),
--  (2, 'User 2', 'password456', 'User'),
--  (3, 'User 3', 'password789', 'User'),
--  (4, 'User 4', 'password012', 'User'),
--  (5, 'User 5', 'password345', 'User'),
--  (6, 'User 6', 'password678', 'User'),
--  (7, 'User 7', 'password901', 'User'),
--  (8, 'User 8', 'password234', 'User');

--SELECT * FROM usertable;

--SELECT * FROM casetable, usertable, communicationtable
--WHERE  case_name = 'Case 5' AND (case_status='Active' OR case_status='Inactive') AND user_password='password234' AND comm_message='Message 1';

--SELECT documenttable.doc_name, casetable.case_name, communicationtable.comm_message, calendartable.event_description
--FROM clienttables
--JOIN casetable ON clienttables.client_id = casetable.client_id
--JOIN documenttable ON clienttables.client_id = documenttable.client_id
--JOIN communicationtable ON clienttables.client_id = communicationtable.comm_id
--JOIN calendartable ON clienttables.client_id =calendartable.event_id;

--SELECT doc_name,doc_id,doc_version,task_id,task_description,client_contact_num,client_email
--FROM documenttable, tasktable,clienttables
--ORDER BY doc_name,doc_id,doc_version, task_id,task_description,client_contact_num,client_email DESC;

--SELECT AVG(task_id) AS id, COUNT(*) AS total_cases
--FROM tasktable;

--SELECT c.case_id, c.case_name, a.attorney_name, COUNT(d.doc_id) AS total_documents
--FROM casetable c
--JOIN attorneytabless a ON c.attorney_id = a.attorney_id
--LEFT JOIN documenttable d ON c.case_id = d.doc_id
--GROUP BY c.case_id, c.case_name, a.attorney_name
--HAVING COUNT(d.doc_id) > 0;

--SELECT *
--FROM casetable
--WHERE attorney_id = ALL (SELECT attorney_id FROM casetable WHERE case_status = 'Active');

--SELECT *
--FROM clienttables
--WHERE client_id = ANY (SELECT client_id FROM casetable WHERE case_status = 'Active');

--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id
--WHERE c.case_status = 'Active';

--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id;

--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id
--ORDER BY c.case_name ASC;

--SELECT c.case_id, c.case_name, cl.client_name, a.attorney_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id
--JOIN attorneytabless a ON c.attorney_id = a.attorney_id;

--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--LEFT JOIN clienttables cl ON c.client_id = cl.client_id;

--CREATE VIEW active_cases_view AS
--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id
--WHERE c.case_status = 'Active';

--CREATE VIEW active_case_view AS
--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id
--WHERE c.case_status = 'Active' AND c.case_num > 1002;

--CREATE VIEW update_view AS
--SELECT c.case_id, c.case_name, cl.client_name
--FROM casetable c
--JOIN clienttables cl ON c.client_id = cl.client_id
--WHERE c.case_status = 'Active';



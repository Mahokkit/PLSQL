-- Question 2
DROP TABLE audit_ddl;
CREATE TABLE audit_ddl
(
	action VARCHAR2(20),
	who VARCHAR2(30) DEFAULT USER,
	when TIMESTAMP DEFAULT SYSTIMESTAMP
);
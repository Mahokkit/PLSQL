-- Scripts for Question 1 Section 7_3
DECLARE
	e_invalid_dept EXCEPTION;
	v_error_code NUMBER;
	v_error_message VARCHAR2(255);
	v_deptno NUMBER := 40;-- 20, 30,40
BEGIN
	UPDATE excep_emps
		SET salary = 10000
		WHERE department_id = v_deptno;
	IF SQL%NOTFOUND THEN
		RAISE e_invalid_dept;
	END IF;
EXCEPTION
	WHEN e_invalid_dept THEN
		v_error_code := SQLCODE;
		v_error_message := SQLERRM;
		DBMS_OUTPUT.PUT_LINE('Invalid Department ID. Error Code: '||v_error_code||'. Error Message: '||v_error_message||'.');
END;
/

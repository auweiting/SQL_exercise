SELECT F_NAME, L_NAME, ADDRESS
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin%';

SELECT F_NAME, L_NAME, B_DATE
FROM EMPLOYEES
WHERE B_DATE LIKE '%-7_%';

SELECT F_NAME, L_NAME, SALARY
FROM EMPLOYEES
WHERE DEP_ID = 5 AND (SALARY BETWEEN 60000 AND 70000);

SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID;

SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

SELECT DEP_ID, COUNT(EMP_ID)
FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(EMP_ID), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID HAVING COUNT(EMP_ID)<4
ORDER BY AVG_SALARY;

SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

-- Comando da ferramenta

DESC employees

DESC departments

DESC locations

-- Comando SQL

SELECT *
FROM employees;

SELECT department_id, location_id
FROM departments;

SELECT employee_id, first_name, last_name, salary
FROM employees;

SELECT  department_id,
        department_name,
        manager_id
FROM    departments;

SELECT  DEPARTMENT_NAME || Q'[ DEPARTMENT'S MANAGER ID: ]' || MANAGER_ID "DEPARTAMENTO E GERENTE"
FROM    DEPARTMENTS;

SELECT DISTINCT LAST_NAME, FIRST_NAME
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID, DEPARTMENT_ID
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME = 'King';


SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE = '30/01/04';

SELECT *
FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 15000;

SELECT EMPLOYEE_ID, LAST_NAME, SALARY, MANAGER_ID, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, JOB_ID
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%a';

SELECT LAST_NAME, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, JOB_ID
FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, JOB_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = &EMPLOYEE_ID;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, JOB_ID
FROM EMPLOYEES
WHERE FIRST_NAME = '&FIRST_NAME';

-- usando a COMANDO DEFINE

DEFINE employee_id = 101
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_id;

DEFINE employee_id 

UNDEFINE employee_id

----- FUN��ES ------


SELECT  employee_id,last_name, department_id
FROM    employees
WHERE   UPPER(last_name) = 'KING';

SELECT  employee_id,last_name, department_id
FROM    employees
WHERE   LOWER(last_name) = 'king';

SELECT  employee_id,last_name, department_id
FROM    employees
WHERE   INITCAP(last_name) = 'King';

--Manipula��es de caracteres--
SELECT  CONCAT('Curso: ', 'Introdu��o ORACLE 19c'), SUBSTR('Introdu��o ORACLE 19c', 1, 11),
        LENGTH('Introdu��o ORACLE 19c'), INSTR('Introdu��o ORACLE 19c', 'ORACLE')
FROM    dual;
SELECT  LPAD('Introdu��o ORACLE 19c', 30, '*'), RPAD('Introdu��o ORACLE 19c', 30, '*'),
        REPLACE('Introdu��o ORACLE 12c', '12c', '19c'), TRIM(';' FROM 'nome@gmail.com;'),
        RTRIM('nome@gmail.com;', ';'), LTRIM('   nome@gmail.com', ' ')
FROM    dual;

--Fun��es tipo NUMBEER--

Select ROUND(45.928, 2), TRUNC(45.928, 2), MOD(1300, 600) RESTO, ABS(-9), SQRT(9)
FROM dual;

--Fun��es tipo DATE--

SELECT sysdate
FROM dual; --a tabela dual � usada para manipular calculos


SELECT last_name, ROUND((sysdate-hire_date)/7, 2) "Semanas de Trabalho"
FROM employees;

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(sysdate, hire_date), 2) "Meses de Trabalho"
FROM employees;

SELECT sysdate, ADD_MONTHS(sysdate, 3), NEXT_DAY(SYSDATE, 'SEXTA FEIRA'), LAST_DAY(sysdate)
FROM dual;

SELECT  sysdate, ROUND(sysdate, 'MONTH'), ROUND(sysdate, 'YEAR'),
        TRUNC(sysdate, 'MONTH'), TRUNC(sysdate, 'YEAR')
FROM    dual;

SELECT  sysdate, TO_CHAR(TRUNC(sysdate), 'DD/MM/YY HH24:MI:SS')
FROM    dual;

-- CONVERS�O IMPLICITA => som em registros com numeros
SELECT last_name,TO_CHAR(hire_date, 'DD/MM/YYYY  HH24:MI:SS') DT_ADMISS�O
FROM employees;

SELECT sysdate,TO_CHAR(sysdate, 'DD/MM/YYYY  HH24:MI:SS') DATA
FROM   dual;

SELECT last_name, TO_CHAR(hire_date, 'DD, "de" Month "de" YYYY') DT_ADMISS�O
FROM employees;

SELECT last_name, TO_CHAR(hire_date, 'FMDD, "de" Month "de" YYYY') DT_ADMISS�O
FROM employees;

-- Utilizando a Fun��o TO_CHAR com N�meros

SELECT first_name, last_name, TO_CHAR(salary, 'L99G999G999D99') SALARIO
FROM employees;

SELECT first_name, last_name, TO_CHAR(salary, 'L99G999G999D99') SALARIO
FROM employees;

-- Utilizando a Fun��o TO_NUMBER

SELECT TO_NUMBER('12000,50')
FROM  dual;

-- Utilizando a Fun��o TO_DATE

SELECT TO_DATE('06/02/2020','DD/MM/YYYY') DATA
FROM  dual;

SELECT first_name, last_name, hire_date
FROM   employees
WHERE  hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');

-- Utilizando Fun��es Aninhadas

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date),0) NUMERO_MESES
FROM   employees
WHERE  hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');

-- Utilizando a Fun��o NVL

SELECT last_name, salary, NVL(commission_pct, 0), salary*12 SALARIO_ANUAL, 
       (salary*12) + (salary*12*NVL(commission_pct, 0)) REMUNERACAO_ANUAL
FROM employees;


-- Utilizando a Fun��o COALESCE

SELECT COALESCE(NULL, NULL, 'Expresss�o 3'), COALESCE(NULL, 'Express�o 2', 'Expresss�o 3'),
       COALESCE('Express�o 1', 'Express�o 2', 'Expresss�o 3')
FROM dual;

SELECT last_name, employee_id, commission_pct, manager_id, 
       COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),
       'Sem percentual de comiss�o e sem gerente')
FROM employees;

-- Utilizando a Fun��o NVL2

SELECT last_name, salary, commission_pct, 
       NVL2(commission_pct, 10, 0) PERCENTUAL_ATERADO
FROM employees;

-- Utilizando a Fun��o NULLIF

SELECT NULLIF(1000,1000), NULLIF(1000,2000)
FROM dual;

SELECT first_name, last_name, LENGTH(first_name) "Express�o 1",
       LENGTH(last_name) "Express�o 2", NULLIF(LENGTH(first_name), LENGTH(last_name)) RESULTADO
FROM employees;

-- Express�o CASE

SELECT  last_name, job_id, salary,
        CASE job_id
            WHEN 'IT_PROG' THEN 1.10*salary
            WHEN 'ST_CLERK' THEN 1.15*salary
            WHEN 'SA_REP' THEN 1.20*salary
            ELSE salary 
        END "NOVO SALARIO"
FROM employees;

-- Utilizando a Fun��o DECODE

SELECT last_name, job_id, salary,
DECODE(job_id, 'IT_PROG' , 1.10*salary,
               'ST_CLERK', 1.15*salary,
               'SA_REP'  , 1.20*salary
                         , salary) "NOVO SALARIO"
FROM employees;

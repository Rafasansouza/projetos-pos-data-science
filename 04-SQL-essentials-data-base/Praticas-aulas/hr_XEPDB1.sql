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

----- FUNÇÕES ------


SELECT  employee_id,last_name, department_id
FROM    employees
WHERE   UPPER(last_name) = 'KING';

SELECT  employee_id,last_name, department_id
FROM    employees
WHERE   LOWER(last_name) = 'king';

SELECT  employee_id,last_name, department_id
FROM    employees
WHERE   INITCAP(last_name) = 'King';

--Manipulações de caracteres--
SELECT  CONCAT('Curso: ', 'Introdução ORACLE 19c'), SUBSTR('Introdução ORACLE 19c', 1, 11),
        LENGTH('Introdução ORACLE 19c'), INSTR('Introdução ORACLE 19c', 'ORACLE')
FROM    dual;
SELECT  LPAD('Introdução ORACLE 19c', 30, '*'), RPAD('Introdução ORACLE 19c', 30, '*'),
        REPLACE('Introdução ORACLE 12c', '12c', '19c'), TRIM(';' FROM 'nome@gmail.com;'),
        RTRIM('nome@gmail.com;', ';'), LTRIM('   nome@gmail.com', ' ')
FROM    dual;

--Funções tipo NUMBEER--

Select ROUND(45.928, 2), TRUNC(45.928, 2), MOD(1300, 600) RESTO, ABS(-9), SQRT(9)
FROM dual;

--Funções tipo DATE--

SELECT sysdate
FROM dual; --a tabela dual é usada para manipular calculos


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

-- CONVERSÂO IMPLICITA => som em registros com numeros
SELECT last_name,TO_CHAR(hire_date, 'DD/MM/YYYY  HH24:MI:SS') DT_ADMISSÂO
FROM employees;

SELECT sysdate,TO_CHAR(sysdate, 'DD/MM/YYYY  HH24:MI:SS') DATA
FROM   dual;

SELECT last_name, TO_CHAR(hire_date, 'DD, "de" Month "de" YYYY') DT_ADMISSÂO
FROM employees;

SELECT last_name, TO_CHAR(hire_date, 'FMDD, "de" Month "de" YYYY') DT_ADMISSÂO
FROM employees;

-- Utilizando a Função TO_CHAR com Números

SELECT first_name, last_name, TO_CHAR(salary, 'L99G999G999D99') SALARIO
FROM employees;

SELECT first_name, last_name, TO_CHAR(salary, 'L99G999G999D99') SALARIO
FROM employees;

-- Utilizando a Função TO_NUMBER

SELECT TO_NUMBER('12000,50')
FROM  dual;

-- Utilizando a Função TO_DATE

SELECT TO_DATE('06/02/2020','DD/MM/YYYY') DATA
FROM  dual;

SELECT first_name, last_name, hire_date
FROM   employees
WHERE  hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');

-- Utilizando Funções Aninhadas

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date),0) NUMERO_MESES
FROM   employees
WHERE  hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');

-- Utilizando a Função NVL

SELECT last_name, salary, NVL(commission_pct, 0), salary*12 SALARIO_ANUAL, 
       (salary*12) + (salary*12*NVL(commission_pct, 0)) REMUNERACAO_ANUAL
FROM employees;


-- Utilizando a Função COALESCE

SELECT COALESCE(NULL, NULL, 'Expresssão 3'), COALESCE(NULL, 'Expressão 2', 'Expresssão 3'),
       COALESCE('Expressão 1', 'Expressão 2', 'Expresssão 3')
FROM dual;

SELECT last_name, employee_id, commission_pct, manager_id, 
       COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),
       'Sem percentual de comissão e sem gerente')
FROM employees;

-- Utilizando a Função NVL2

SELECT last_name, salary, commission_pct, 
       NVL2(commission_pct, 10, 0) PERCENTUAL_ATERADO
FROM employees;

-- Utilizando a Função NULLIF

SELECT NULLIF(1000,1000), NULLIF(1000,2000)
FROM dual;

SELECT first_name, last_name, LENGTH(first_name) "Expressão 1",
       LENGTH(last_name) "Expressão 2", NULLIF(LENGTH(first_name), LENGTH(last_name)) RESULTADO
FROM employees;

-- Expressão CASE

SELECT  last_name, job_id, salary,
        CASE job_id
            WHEN 'IT_PROG' THEN 1.10*salary
            WHEN 'ST_CLERK' THEN 1.15*salary
            WHEN 'SA_REP' THEN 1.20*salary
            ELSE salary 
        END "NOVO SALARIO"
FROM employees;

-- Utilizando a Função DECODE

SELECT last_name, job_id, salary,
DECODE(job_id, 'IT_PROG' , 1.10*salary,
               'ST_CLERK', 1.15*salary,
               'SA_REP'  , 1.20*salary
                         , salary) "NOVO SALARIO"
FROM employees;

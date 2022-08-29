-- CREATE DATABASE
CREATE DATABASE analise_risco;

-- ENTENDENDO AS TABELAS
/*
	PASSOS PARA IDENTIFICAR INFORMAÇÕES
1°  QUANTIDADE DE REGISTROS
2°  DADOS DISTINTOS, NAS COLUNAS
3°  CAMPOS QUE PODEM SER RELACIONADOS
*/

-- QUANTIDADE DE REGISTROS
SELECT count(*) qtde FROM analise_risco.dados_mutuarios;

-- IDENTIFICANDO CAMPOS DA TABELA
SELECT * FROM analise_risco.dados_mutuarios LIMIT 10;
 
 -- IDENTIFICANDO DADOS DISTINTOS
SELECT DISTINCT person_id FROM analise_risco.dados_mutuarios;

SELECT DISTINCT person_age FROM analise_risco.dados_mutuarios;

SELECT DISTINCT person_home_ownership FROM analise_risco.dados_mutuarios;

SELECT DISTINCT person_emp_length FROM analise_risco.dados_mutuarios;

-- TABELA DE EMPRESTIMOS
SELECT * FROM analise_risco.emprestimos;

-- IDENTIFICANDO OS DISTINTOS
SELECT DISTINCT loan_id FROM analise_risco.emprestimos;
SELECT DISTINCT loan_intent FROM analise_risco.emprestimos;
SELECT DISTINCT loan_grade FROM analise_risco.emprestimos;
SELECT DISTINCT loan_amnt FROM analise_risco.emprestimos;
SELECT DISTINCT loan_int_rate FROM analise_risco.emprestimos;
SELECT DISTINCT loan_status FROM analise_risco.emprestimos;
SELECT DISTINCT loan_percent_income FROM analise_risco.emprestimos;

-- TABELA HISTORICOS BANCOS
SELECT * FROM analise_risco.historicos_banco;

SELECT DISTINCT cb_id FROM analise_risco.historicos_banco;

SELECT DISTINCT cb_person_default_on_file FROM analise_risco.historicos_banco;

SELECT DISTINCT cb_person_cred_hist_length FROM analise_risco.historicos_banco;

-- TABELA ID
SELECT * FROM analise_risco.id;

SELECT DISTINCT person_id FROM analise_risco.id;

SELECT DISTINCT loan_id FROM analise_risco.id;

SELECT DISTINCT cb_id FROM analise_risco.id;

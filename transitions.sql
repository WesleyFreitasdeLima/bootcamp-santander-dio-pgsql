SELECT numero, nome, ativo FROM banco ORDER BY numero;
UPDATE banco SET ativo = false WHERE numero = 0;

-- ROLLBACK
BEGIN;
	UPDATE banco SET ativo = true WHERE numero = 0;
ROLLBACK;

SELECT numero, nome, ativo FROM banco WHERE numero = 0;

-- COMMIT
BEGIN;
	UPDATE banco SET ativo = true WHERE numero = 0;
COMMIT;

SELECT numero, nome, ativo FROM banco WHERE numero = 0;

-- SAVE POINT
BEGIN;
UPDATE funcionarios SET gerente = 4 WHERE id = 2;
SAVEPOINT sf_func;
UPDATE funcionarios SET gerente = null; -- ERRO FORÇADO
ROLLBACK TO sf_func;
UPDATE funcionarios SET gerente = 3 WHERE id = 1;
COMMIT;

SELECT id, gerente, nome FROM funcionarios;
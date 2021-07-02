-- JOIN
SELECT
    banco.numero,
    banco.nome,
    agencia.numero,
    agencia.nome
FROM
    banco
    JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT
    COUNT(DISTINCT banco.numero)
FROM
    banco
    JOIN agencia ON agencia.banco_numero = banco.numero;

-- LEFT JOIN
SELECT
    banco.numero,
    banco.nome,
    agencia.numero,
    agencia.nome
FROM
    banco
    LEFT JOIN agencia ON agencia.banco_numero = banco.numero;

-- RIGHT JOIN
SELECT
    agencia.numero,
    agencia.nome,
    banco.numero,
    banco.nome
FROM
    agencia
    RIGHT JOIN banco ON banco.numero = agencia.banco_numero;

-- FULL JOIN
SELECT
    banco.numero,
    banco.nome,
    agencia.numero,
    agencia.nome
FROM
    banco FULL
    JOIN agencia ON agencia.banco_numero = banco.numero;

-- CROSS JOIN
SELECT
    banco.numero,
    banco.nome,
    agencia.numero,
    agencia.nome
FROM
    banco
    CROSS JOIN agencia;

SELECT
    banco.numero,
    agencia.nome,
    conta_corrente.numero,
    conta_corrente.digito,
    cliente.nome
FROM
    banco
    JOIN agencia ON agencia.banco_numero = banco.numero
    JOIN conta_corrente ON conta_corrente.banco_numero = banco.numero
    AND conta_corrente.agencia_numero = agencia.numero
    JOIN cliente ON cliente.numero = conta_corrente.cliente_numero;
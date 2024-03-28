SELECT*
FROM clientes

//*Profissão dos clientes*//
SELECT DISTINCT profissao
FROM clientes

//*Média de idade dos cliente por profissão *//

SELECT AVG(CAST(idade as numeric)) as 'Média de Idade' , profissao
FROM clientes
GROUP BY profissao 
ORDER BY 'Média de Idade' desc

//*Média de salário anual dos clientes por profissão*//
SELECT AVG(CAST(salario_anual as numeric)) as 'Média de Salario Anual', profissao
FROM clientes
GROUP BY profissao 
ORDER BY 'Média de Salario Anual' desc

//*Média mensal salários dos clientes por profissão *//
SELECT (AVG(CAST(salario_anual as numeric))/12) as 'Média de Salario Mensal', profissao
FROM clientes
GROUP BY profissao 
ORDER BY 'Média de Salario Mensal' desc

//*Maiores salários dos clientes por profissão*//

SELECT TOP (15) profissao , salario_anual
FROM clientes
GROUP BY profissao , salario_anual
ORDER BY salario_anual desc

//*Menores salários dos clientes por profissão*//

SELECT TOP (15) profissao , salario_anual
FROM clientes
GROUP BY profissao , salario_anual
ORDER BY salario_anual asc

//*Qtde. de contas e cartões por profissão*//

SELECT DISTINCT profissao , SUM (CAST (num_contas as numeric)) as 'Qtde de Contas por Profissão'
FROM clientes
GROUP BY  profissao
ORDER BY 'Qtde de Contas por Profissão' desc

SELECT DISTINCT profissao , SUM (CAST (num_cartoes as numeric)) as 'Qtde de Cartões por Profissão'
FROM clientes
GROUP BY  profissao
ORDER BY 'Qtde de Cartões por Profissão' desc
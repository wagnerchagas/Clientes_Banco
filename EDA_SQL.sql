SELECT*
FROM clientes

//*Profiss�o dos clientes*//
SELECT DISTINCT profissao
FROM clientes

//*M�dia de idade dos cliente por profiss�o *//

SELECT AVG(CAST(idade as numeric)) as 'M�dia de Idade' , profissao
FROM clientes
GROUP BY profissao 
ORDER BY 'M�dia de Idade' desc

//*M�dia de sal�rio anual dos clientes por profiss�o*//
SELECT AVG(CAST(salario_anual as numeric)) as 'M�dia de Salario Anual', profissao
FROM clientes
GROUP BY profissao 
ORDER BY 'M�dia de Salario Anual' desc

//*M�dia mensal sal�rios dos clientes por profiss�o *//
SELECT (AVG(CAST(salario_anual as numeric))/12) as 'M�dia de Salario Mensal', profissao
FROM clientes
GROUP BY profissao 
ORDER BY 'M�dia de Salario Mensal' desc

//*Maiores sal�rios dos clientes por profiss�o*//

SELECT TOP (15) profissao , salario_anual
FROM clientes
GROUP BY profissao , salario_anual
ORDER BY salario_anual desc

//*Menores sal�rios dos clientes por profiss�o*//

SELECT TOP (15) profissao , salario_anual
FROM clientes
GROUP BY profissao , salario_anual
ORDER BY salario_anual asc

//*Qtde. de contas e cart�es por profiss�o*//

SELECT DISTINCT profissao , SUM (CAST (num_contas as numeric)) as 'Qtde de Contas por Profiss�o'
FROM clientes
GROUP BY  profissao
ORDER BY 'Qtde de Contas por Profiss�o' desc

SELECT DISTINCT profissao , SUM (CAST (num_cartoes as numeric)) as 'Qtde de Cart�es por Profiss�o'
FROM clientes
GROUP BY  profissao
ORDER BY 'Qtde de Cart�es por Profiss�o' desc
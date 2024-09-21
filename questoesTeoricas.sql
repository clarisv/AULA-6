## Questões teoricas ##
-- 1) Qual o comando básico para inserir dados numa tabela de banco de Dados? Quais suas variações possíveis?
/* INSERT INTO funcionários  (nome, gmail, idade, sexo)
VALUES (‘flavia’ ,  ‘flaviasilva602@gmail.com’ , ‘20’ ,  ‘feminino’ );

 2)Por que em tabelas com chave primária com autoincremento, devemos evitar passar corno parâmentro a chave e seu respectivo valor?
  Quando uma coluna é definida como chave primária com autoincremento, o banco de dados gera automaticamente um valor único para cada nova linha inserida. 
  Passar um valor para essa coluna manualmente pode causar conflitos e erros, pois o banco de dados pode tentar gerar um valor diferente do que você especificou. 
  Além disso, pode levar a dados inconsistentes se você inserir um valor que já existe na tabela.
 
 3) Podemos inserir mais de uma linha de registros num único comando? Cite exemplos
 Sim, é possível inserir múltiplas linhas em um único comando INSERT. 
 Usando palavras chaves VALUES varias vezes ou usar um subquery SELECT que retorne múltiplas linhas:

- values -
INSERT INTO produtos (nome, preco)
VALUES ('Produto A', 10.99),
       ('Produto B', 19.99),
       ('Produto C', 5.99);


4) Qual o formato básico da datas no MySQL? Qual o formato básico de hora ou tempo?
O formato básico de data é yyyy-mm-dd exemplo: 2023-11-24
Para representar horas e minutos, pode-se usar o tipo de dado TIME com o formato 'HH:MM:SS'. 
Para representar datas e horas juntas, pode-se usar o tipo de dado DATETIME com o formato 'YYYY-MM-DD HH:MM:SS'. 


 5) É possível inserir uma chave estrangeira numa tabela, sem que a mesma exista na tabela original? justifique.
Não, não é possível inserir uma chave estrangeira em uma tabela se o valor correspondente não existir na tabela referenciada. A ideia da chave estrangeira
é garatir que os dados se conecte corretamente entre as tabelas. Então, se você tentar usar um valor que não está na tabela original, o banco de dados vai impedir
para manter tudo em ordem e evitar dados quebrados.

 6) Qual o comando para excluir dados de uma tabela?
 DELETE FROM, exemplo:
 
 DELETE FROM clientes
WHERE id = 1;


 7) Qual o melhor critério de exclusão desses dados? É possível usar vários critérios para exclusão? Quais as vantagens ou desvantagens dessa segunda abordagem?
 Para excluir dados, use uma condição específica para garantir que só os registros desejados sejam removidos.Pode-se combinar vários critérios para maior
 precisão, mas isso pode tornar a consulta mais complexa e, às vezes, mais lenta. O uso de múltiplos critérios ajuda a evitar exclusões acidentais, mas é preciso verificar
 se a lógica está correta.
## Questões teoricas ##
-- 1) Qual o comando básico para inserir dados numa tabela de banco de Dados? Quais suas variações possíveis?
/* INSERT INTO funcionários  (nome, gmail, idade, sexo)
VALUES (‘flavia’ ,  ‘flaviasilva602@gmail.com’ , ‘20’ ,  ‘feminino’ );

 2)Por que em tabelas com chave primária com autoincremento, devemos evitar passar corno parâmentro a chave e seu respectivo valor?
  Quando uma coluna é definida como chave primária com autoincremento, o banco de dados gera automaticamente um valor único para cada nova linha inserida. 
  Passar um valor para essa coluna manualmente pode causar conflitos e erros, pois o banco de dados pode tentar gerar um valor diferente do que você especificou. 
  Além disso, pode levar a dados inconsistentes se você inserir um valor que já existe na tabela.
 
 3) Podemos inserir mais de uma linha de registros num único comando? Cite exemplos
 Sim, é possível inserir múltiplas linhas em um único comando INSERT. 
 Usando palavras chaves VALUES varias vezes ou usar um subquery SELECT que retorne múltiplas linhas:

- values -
INSERT INTO produtos (nome, preco)
VALUES ('Produto A', 10.99),
       ('Produto B', 19.99),
       ('Produto C', 5.99);


4) Qual o formato básico da datas no MySQL? Qual o formato básico de hora ou tempo?
O formato básico de data é yyyy-mm-dd exemplo: 2023-11-24
Para representar horas e minutos, pode-se usar o tipo de dado TIME com o formato 'HH:MM:SS'. 
Para representar datas e horas juntas, pode-se usar o tipo de dado DATETIME com o formato 'YYYY-MM-DD HH:MM:SS'. 


 5) É possível inserir uma chave estrangeira numa tabela, sem que a mesma exista na tabela original? justifique.
Não, não é possível inserir uma chave estrangeira em uma tabela se o valor correspondente não existir na tabela referenciada. A ideia da chave estrangeira
é garatir que os dados se conecte corretamente entre as tabelas. Então, se você tentar usar um valor que não está na tabela original, o banco de dados vai impedir
para manter tudo em ordem e evitar dados quebrados.

 6) Qual o comando para excluir dados de uma tabela?
 DELETE FROM, exemplo:
 
 DELETE FROM clientes
WHERE id = 1;


 7) Qual o melhor critério de exclusão desses dados? É possível usar vários critérios para exclusão? Quais as vantagens ou desvantagens dessa segunda abordagem?
 Para excluir dados, use uma condição específica para garantir que só os registros desejados sejam removidos.Pode-se combinar vários critérios para maior
 precisão, mas isso pode tornar a consulta mais complexa e, às vezes, mais lenta. O uso de múltiplos critérios ajuda a evitar exclusões acidentais, mas é preciso verificar
 se a lógica está correta.


8) Podemos apagar dados de uma tabela, cuja sua chave primária, seja uma chave estrangeira em umna outra tabela? Qual o efeito disto?
Sim, O efeito disso depende das regras de integridade referencial definidas

 9) Qual o comando para atualizar dados (registros) de urna tabela? Demonstre com um exemplo.
UPDATE ... SET
update pacientes set idade= 21, idade= 30 where idpacientes=39;

10) As regras de filtros (cláusula Where) também podem ser usadas nas atualizações de registro?
Sim, a cláusula WHERE pode e deve ser usada com o comando UPDATE para aplicar filtros e garantir que apenas os registros desejados
sejam atualizados. Sem a cláusula WHERE, todos os registros da tabela seriam atualizados.


 11) Qual é o melhor atributo para se filtrar o registro a ser atualizado numa tabela?
 O melhor é usar uma chave primária porque ela identifica cada registro de forma única e evita problemas de atualizar mais de um item. Se não tiver chave primária, use
 atributos únicos que identificam bem o registro.
 */

8) Podemos apagar dados de uma tabela, cuja sua chave primária, seja uma chave estrangeira em umna outra tabela? Qual o efeito disto?
Sim, O efeito disso depende das regras de integridade referencial definidas

 9) Qual o comando para atualizar dados (registros) de urna tabela? Demonstre com um exemplo.
UPDATE ... SET
update pacientes set idade= 21, idade= 30 where idpacientes=39;

10) As regras de filtros (cláusula Where) também podem ser usadas nas atualizações de registro?
Sim, a cláusula WHERE pode e deve ser usada com o comando UPDATE para aplicar filtros e garantir que apenas os registros desejados
sejam atualizados. Sem a cláusula WHERE, todos os registros da tabela seriam atualizados.


 11) Qual é o melhor atributo para se filtrar o registro a ser atualizado numa tabela?
 O melhor é usar uma chave primária porque ela identifica cada registro de forma única e evita problemas de atualizar mais de um item. Se não tiver chave primária, use
 atributos únicos que identificam bem o registro.
 */
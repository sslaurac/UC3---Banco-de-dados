-- Precisamos criar o nosso banco de dados antes de tudo
-- Para isso, usamos o seguinte comando:
CREATE DATABASE loja_bicicleta;
-- Este comando cria o banco com o nome 'loja_bicicleta'
-- Para rodar este comando, seleiciona o comando todo
-- e clique no símbolo do raio no menu acima
-- ou aperte ctrl + enter


# DDL - Como começar a trabalhar com o banco usando comeandos: 

## DDL significa `Data Definition Language` que em Port significa `Linguagem de difinição de Dados`, ou seja, são os comando que criam o nosso banco.

### Passo 1 - ENTRANDO NO WORKBENCH
MySQL Workbench. É nele que vamos inserir nossos comandos.
Em MySQL Workbench > Local Istance > Senha (a senha padrão é `root`).

### Passo 2 - CRIANDO UM NOVO BANCO 
Para criar um novo banco de dados, usar o comando `CREATE DATABASE nome_do_banco;` 
> NÃO ESQUEÇA: O PONTO E VÍRGULA NO FINAL (;) É OBRIGATÓRIO!
Para rodar o comando, selecione toda a linha que você digitou e aperte `Ctrl` + `enter`
ou selecionando o botão com o símbolo de um raio. 
Você saberá que o comando foi executado com sucesso se aparecer uma mensagem com um ✅.
Para visualizar o banco criado, procure pelo símbolo 🔃 clique nele para atualizar a visualização dos bancos.

### PASSO 3 - CRIANDO TABELAS 
Agora que já criamos o banco, precimaos criar as tabelas dentro dele.
Para isso, priemiro precisamos informar ao workbench em qual banco vamos trabalhar, 
pois podem conter vários.

Você pode fazer isso clicando duas vezes no nome do banco até ficar em **negrito** ou colocar 
na primeira linha do seus comandos: `USE node_do_banco` que indica o banco que esta sendo usado. 

Para criarmos uma tabela, usamos o comando 
``` sql 
    CREATE TABLE IF NOT EXISTS bicicletas (
        -- cria uma coluna chamada 'id_bicicleta
        -- o TIPO é INT (pois é um número inteiro)
        -- é a CHAVE PRIMÁRIA desta tabela (Primary Key)
        -- vai ser criada automaticamente pelo banco (AUTO_INCREMENT)
        id_bicicleta INT PRIMARY KEY AUTO_INCREMENT, 
        -- VARCHAR(50) cria uma coluna de texto que pode ter ATÉ 50 caracteres (pode ir até 255)
        modelo VARCHAR(50) NOT NULL,
        preco DECIMAL (10,2) NOT NULL,
    );
       
```
Isso se traduz para *criar tabela chamda 'nome_da_tabela' se ela já não existir*

### Tente você mesmo: crie a tabela de clientes da loja de bicicletas. Use o mesmo tipo de comando que aprendemos agora (CREATE TABLE etc etc) 
### com as colunas de acordo com o que já havíamos planejado. O nome da tabela deve ser 'cleintes'. Não se esqueça, use o mesmo padrão de nomeação 
### que usamos para a tabela "bicicletas".


### PASSO 4 - TABELAS COM CHAVES ESTRANGEIRAS
Vamos cirar a tabela 'vendas', que liga com 'clientes', deste modo: 

```sql
    CREATE TABLE IF NOT EXISTS vendas(
        id_venda INT PRIMARY KEY AUTO_INCREMENT,
        id_cliente INT NOT NULL,
        FOREING KEY (id_cliente) REFERENCES (id_cliente)
    );
```

No exemplo acima, logo após criarmos a colina `id_cliente`, usamos o comando `FOREING KEY`. 
O `id_cliente` indica qual a coluna que é a noss chave estrangeira. 
O `REFERENCES clientes(id_clientes)` indica com qual tabela (clientes) e em qual coluna desta tabela (id_clientes)
estamos fazendo a ligação. Sempre crie todas as colunas primeiro e só  no final crie todas as foreing keys.

### Tente você mesmo: agora você deve criar a tabela itens_vendas. Utilize o que você aprendeu sobre foreing keys. Lembre-se: nesta tabela são 2 foreing keys diferentes, crie primeiro as colunas e só depois crie as chaves estrangeiras.


 ```sql
 CREATE TABLE IF NOT EXISTS itens_vendas(
		id_itens_vendaitens_vendas INT PRIMARY KEY AUTO_INCREMENT,
        id_venda INT NOT NULL,
        id_bicicleta INT NOT NULL,
        quantidade INT NOT NULL DEFAULT 1,
		FOREIGN KEY (id_venda) REFERENCES vendas (id_venda),
        FOREIGN KEY (id_bicicleta) REFERENCES bicicletas(id_bicicleta)
    ); 
``` 

### PASSO 5 - COMO ALTERAR TABELAS JÁ CRIADAS

Nossas tabelas já foram crianas, mas ai vem o pensamento, clientes devem ter CPF, mas eu não criei esta coluna e agora? 
Calma gafanhoto, tem solucção e ele se chama `ALTER TABLE`. Este comando nos permite alterar nossas tabelas. 
Podemos trocar o nome, criar colunas novas, etc. 

### Alterar e adicionar uma coluna nova 
```sql 
    ALTER TABLE nome_da_tabela ADD COLUMN
    nome_da_coluna TIPO
``` 
> Exemplo prático
```sql
    ALTER TABLE clientes ADD COLUMN CPF VARCHAR(11)
    NOT NULL UNIQUE;
```




### ALTERAR E MUDAR O TIPO E/OU O TAMANHO DE UMA COLUNA
```sql 
    ALTER TABLE clientes MODIFY
    COLUMN nome VARCHAR(150);
```



### ALTERAR E RENOMEAR UMA TABELA 
```sql
    ALTER TABLE nome_da_tabela
    RENAME TO nome_novo_da_tabela;
```
```sql
    ALTER TABLE itens_vendas RENAME 
    TO itens;
```



### ALTERAR E REMOVER UMA COLUNA
```sql
    ALTER TABLE nome_da_coluna DROP
    COLUMN nome_da_coluna;
``` 
```sql
    ALTER TABLE clientes DROP COLUNM 
    CPF;
```


> PUTS, ESQUECI DA FOREING KEY! E AGORA?

### ALTERAR E ADICIONAR CHAVES ESTRANGEIRAS
```sql
    ALTER TABLE nome_da_tabela ADD
    CONSTRAINT nome_da_fk FOREIGN KEY
    nome_da_coluna_fk 
    REFERENCES 
    nome_da_tabela_referenciada
    (nome_da_coluna_referenciada);
```
>> EXEMPLO PRÁTICO!!!!!
```sql
    ALTER TABLE itens_vendas ADD
    CONSTRAINT fk_vendas FOREIGN KEY 
    (id_vendas) REFERENCES vendas(id_venda);
```


### PASSO 6 - MANDANDO AS TABELAS DE ARRASTA (Apagar uma tabela)

Como que fazemos para apagar nossas tabelas? Se criamos uma tabela que não vamos mais precisar,
temos que ter um jeito de deletar 

> TEMOS QUE TER CUIDADO, POIS ESSE COMANDO É **IRREVERSÍVEL!**

### Apagar uma tabela inteira:
```sql
    DROP TABLE IF EXISTS nome_da_tabela;
```

```sql
    DROP TABLE IF EXISTS itens;
```

### Apagar um banco de dados inteiro 
```sql
    DROP DATABASE IF EXISTS nome_do_banco;
```

```sql
    DROP DATABASE IF EXISTS loja_bicicleta;
```
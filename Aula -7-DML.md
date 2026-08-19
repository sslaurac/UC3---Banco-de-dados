# DML Como inserir, atualizar e deletar informações dentro das tabelas

## DML significa `Data Manipulation Language` ou `Linguagem de Manipulação de Dados`
Através dela nós conseguimos inserir dados novos, atualizá-los e/ou deleta-los.

### Passo 1 - Como inserir um dado em uma tabela já criada
Para inserir um novo dado, ou seja, uma nova informação, nós usamos o comando INSERT INTO.

```sql
    INSERT INTO nome_da_tabela (nomes_das_colunas) VALUES (valores); 
```

EXEMPLO PRATICO

```sql 
    INSERT INTO livros(titulo, autor, data_lancamento, preco) VALUES (
        "Meu amigo Xablau", "Sir Xablau II", "1999-05-09", 99.99
    );
```
Parar criar vários dados de uma só vez, podemos usar o mesmo insert (sem precisar escrever várias vezes):

```sql 
    INSERT INTO livros (titulo, autor, data_lancamento, preco)  VALUES
    ("Livro 1", "Autor Fulano", "2000-01-05", 110.50),
    ("Livro 2", "Autor Ciclano", "2000-06-12", 109.50),
    ("Livro 3", "Autor Beltrano", "1909-01-05", 99,90);
```

Se uma coluna não esiver marcada com `NOT NULL`, ela é opcional. Por exemplo, 
`data_lancamento` é opcional e nem todo livro precisa ter uma data quando criarmos ele:

```sql
    INSERT INTO livros (titulo, autor, preco) VALUES (
        "Planeta do Xablau", "Dr Xablau", 15.45
    );
```

### Passo 2 - Como alterar um dado que já existe (CUIDADO!)
Para alterarmos uma informação que já existe em uma tabela (exemplo: mudar o nome de um livro)
nós utilizamos o comando `UPDATE`, sempre junto com a opção `WHERE`


```sql
--- ATUALIZE a tabela "tal" DEFININDO a coluna "tal" = novo valor para QUEM OBEDECER tal condição
    UPDATE nome_da_tabela SET nome_da_coluna = novo_valor WHERE condicao;
```

```sql
    UPDATE livros SET titulo = "O inferno de xablau" WHERE id = 3
```


- Trocar o título de 2 livros;
- Trocar o autor de 2 livros;
- Deletar o livro de id 4;

# DQL - COMO BUSCAR INFORMAÇÕES 

## DQL significa `Data Query Language` ou `Linguagem de Consulta da Dados`. Através dela nós conseguimos buscar os dados que precisamos. Todos os comandos de DQL utilizam `select`.

### BUSQUE TUDO DA TABELA clientes
### O símbolos `*` representa TODAS AS COLUNAS;


### Passo 1 - como selecionar todas as colunas e linhas de uma tabela;
```sql
    SELECT * FROM nome_da_tabela;
``` 
```sql
    SELECT * FROM livros;
``` 

### Passo 2 - como selecionar uma coluna especifica:
```sql
    SELECT nome_da_colubna FROM nome_da_tabela;
``` 
```sql
    SELECT titulo FROM livros;
``` 

### Passo 3 - como selecionar várias colinas de uma tabela;
```sql
    SELECT nome_da_coluna, nome_de_outra_coluna FROM nome_da_tabela;
``` 
```sql
    SELECT titulo, autor FROM livros;
``` 

### Passo 4 - Como dar um "apelido" para uma ou mais colunas (APENAS NA HORA DA PESQUISA):
```sql
    SELECT nome_da_coluna AS apelido_da_coluna FROM livros;
``` 
```sql
    SELECT titulo AS Titulo_Do_Livro FROM livros;
``` 

```sql
    SELECT titulo AS Titulo_Do_Livro, autor AS Autor_Do_Livro FROM livros;
``` 

### Passo 5 - Como fazer uma consulta com condição (por exemplo, ao invés de selecionar TODOS os livros, quero apenas os livros do Autor "x")

```sql 
    SELECT * FROM nome_da_tabela WHERE condicao
```
``` sql
    -- Seleciona apenas os livros que tiverem a coluno autor com valor igual a "J. R. R. Xablau"
    -- Traduzindo: seleciona apenas os livros do autor "J. R. R. Xablau"
    SELECT * FROM livros WHERE autor = "J. R. R. Xablau"
```

### EXERCÍCIO:

Crie uma tabela carros, com id_carros, modelo, cor, marca;

Insira pelo menos 10 carros, dividios entre 3 marcas e 2 carros.

Seleciona TUDO da tabela carros.

Seleciona apenas a coluna modelos.

Selecione apenas as colunas modelos e marcas.

Seleciona apenas os carros que tiverem a marca `FERRARI`.

Seleciona a marca e a cor, mas apenas dos carros que tiverem a cor `vermelho`. Coloque o apelido Marca_Do_Caroo e Cor_Do_Carro

### Passo 6 - como selecionar tudo de uma tabela que seja DIFERENTE de algo (mostra tudo, menos aquele valor)
```sql
    SELECT * FROM livro 
    WHERE genero <> 'Fantasia';
```

### Passo 7 - Como selecionar apenas valores que são maiores
```sql
    -- seleciona livros que tenham o preço maior do que 50
    SELECT * FROM livro 
    WHERE preco > 50 ;
```

### Passo 8 - Como selecionar apenas valores que são MENORES
```sql
   -- seleciona os livros que tenham o preço menor do que 30
   SELECT * FROM livro 
   WHERE preco < 30; 
```

### Passo 9 - Como selecionar valores MAIORES OU IGUAIS
```sql
    -- seleciona os livros que tenham data de publicação maior ou igual aos anos 2000
    -- também pode ser usado para MENOR OU IGUAL <=
   SELECT * FROM livro 
   WHERE ano_publicacao >= 2000; 
```
     

### AND, OR e NOT


### Passo 10 (AND) - Como selecionar duas ou mais condições ao mesmo tempo
```sql
-- seleciona livros que tenham o gênero 'Fantasia' mas que também tenham o preço MENOR QUE 60
    SELECT * FROM livro
    WHERE genero = 'Fantasia' AND preco < 60;
```

#### Passo 11 (OR) - Como selecionar uma condição OU outra ao mesmo tempo
```sql
    SELECT * FROM livro 
    WHERE genero = 'Fantasia' OR genero = 'Romance';
```

### Passo 12 (NOT) - Como selecionar todos os gêneros MENOS 'Fantasia'
```sql
   SELECT * FROM livro 
   WHERE NOT genero = 'Fantasia'; 
```

### Passo 13 (BETWEEN) - Como selecionar valores dentro de um intervalo
```sql
    -- seleciona os livros que tenham os preços dentro do intervalo de 20 a 50
   SELECT * FROM livro 
   WHERE preco BETWEEN 20 AND 50; 
```

### Passo 14 - Como selecionar apenas valores entre os que listamos
```sql
   -- seleciona apenas os livros dos gêneros 'Fantasia' e/ou 'Romance' 
   SELECT * FROM livro 
   WHERE genero IN ('Fantasia', 'Suspense'); 
```

```sql
    -- Também podemos combinar usando AND, por exemplo:
    SELECT * FROM livro
    WHERE genero IN ('Fantasia', 'Suspense') AND preco <50;
``` 

### Passo 15 - Como selecionar apenas um valor que COMEÇA ou TERMINA com determinado(os) caractere(es)
```sql
    -- seleciona apenas que livros que começam com O (PRECISA COLOCAR O SINAL % NO FINAL)
    SELECT * FROM livros WHERE titulo LIKE 'O%';
```
```sql
    -- seleciona apenas livros que terminan com Xablau (PRECISA COLOCAR O SINAL % NO COMEÇO)
    SELECT * FROM livros WHERE titulo LIKE '%Xablau';
```

### Passo 16 - Como selecionar um valor que contém tal(is) caracters(s) 
```sql
   -- seleciona livros que CONTÉM 'aventuras' no título, não importa onde (PRECISA COLOCAR O CARACTERE ENTRE O SINAL % )
   SELECT * FROM livros
   WHERE titulo LIKE '%aventuras%';
```


### Passo 17 - Como selecionar um valor que tem um ou mais caracteres 'faltando' (por exemplo, slecoinar um ano da década de 80 sem se importar  se é 81, 82, 83, etc)
```sql
    SELECT * FROM livros
    WHERE ano_publicacao LIKE '198_';
```
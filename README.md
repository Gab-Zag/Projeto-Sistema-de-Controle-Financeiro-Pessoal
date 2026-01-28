# Projeto-Sistema-de-Controle-Financeiro-Pessoal
O objetivo do projeto é praticar a criação de um CRUD completo.
# Funcionalidades (CRUD)
## Usuário
```
Cadastro
Login
Editar perfil
Excluir conta
```
# Transações
```
Criar transação (receita ou despesa)
Listar transações
Editar transação
Excluir transação
```
## Campos:
```
Descrição
Valor
Tipo (RECEITA | DESPESA)
Data
Categoria
```
# Categorias
```
Criar categoria
Listar categorias
Editar categoria
Excluir categoria
```
## Exemplos:
```
Alimentação
Aluguel
Transporte
Lazer
Salário
```
# Banco de Dados

## Usuario
```
id 
nome
email
senha
```

## Categoria
```
id
nome
tipo (RECEITA | DESPESA)
usuario_id (fk)
```

## Transação
```
id
descrição
valor
tipo (Receita | Despesa)
data
categoria_id (FK)
usuario_id (FK)
```

## relacionamentos:
```
Usuário -> Categorias
Usuário -> Transação
Categoria -> Transação
```
# Back-end
## Dependências:
```
Spring Web -> Ela fornece as ferramentas para criar APIs RESTful.

Spring Data JPA -> Serve para facilitar a comunicação entre seu código Java e o banco de dados.

Spring Security -> É um framework robusto de autenticação e autorização. //Aplicar no futuro

JWT -> Não é exatamente uma dependência do Spring, mas uma biblioteca (como a Auth0 ou JJWT) usada em conjunto com o Security. //Aplicar no futuro

PostgreSQL Driver -> se conectem a um banco de dados PostgreSQL usando código Java padrão e independente de banco de dados.

Validation -> Garante que os dados que chegam na sua API estão corretos antes de processá-los.
```
## Endpoints Principais
```
POST /auth/register
POST /auth/login

GET /categorias -> /categorias/{id}
POST /categorias
PUT /categorias/{id}
DELETE /categorias/{id}

GET /transacoes -> /transacoes/{id}
POST /transacoes
PUT /transacoes/{id}c
DELETE /transacoes/{id}

GET /saldo
```
## Regras de Negócio
```
Despesas -> valor negativo
Receita -> valor positivo
Usuário só acessa seus próprios dados
Categoria só pode ser usada pelo dono
```

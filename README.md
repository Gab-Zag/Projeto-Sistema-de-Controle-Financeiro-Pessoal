# Projeto-Sistema-de-Controle-Financeiro-Pessoal
O objetivo do projeto é praticar a criação de um CRUD completo.
# Funcionalidades (CRUD)
## Usuário
Cadastro
Login
Editar perfil
Excluir conta
# Transações
Criar transação (receita ou despesa)

Listar transações

Editar transação

Excluir transação

## Campos:

Descrição

Valor

Tipo (RECEITA | DESPESA)

Data

Categoria

# Categorias
Criar categoria

Listar categorias

Editar categoria

Excluir categoria

## Exemplos:

Alimentação

Aluguel

Transporte

Lazer

Salário

# Banco de Dados

## Usuario
```
id 
nome
email
senha
```

## Cadegoria
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

Usuário -> Categorias

Usuário -> Transação

Categoria -> Transação
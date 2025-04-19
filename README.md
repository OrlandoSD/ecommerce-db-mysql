# Projeto MySQL - E-commerce

Este projeto demonstra práticas de transações, procedures com controle de erro, e backup/recovery no MySQL. O objetivo é mostrar como utilizar transações, procedimentos armazenados (stored procedures), e realizar backup e recuperação de um banco de dados.

## Estrutura do Projeto

Este repositório contém os seguintes scripts:

- `01-criacao_base.sql`: Script para criação da base de dados `ecommerce`, com a tabela de produtos e inserção de dados iniciais.
- `02-transacao_simples.sql`: Exemplo de transação com autocommit desativado, envolvendo modificações nos dados.
- `03-procedure_transacao.sql`: Exemplo de transação dentro de uma stored procedure, com verificação de erro e controle de transações com SAVEPOINT.
- `04-backup/backup_ecommerce.sql`: Backup completo do banco de dados `ecommerce` usando o `mysqldump`.
- `README.md`: Documentação do projeto.

## Pré-requisitos

- MySQL ou MariaDB instalado na sua máquina.
- Acesso ao MySQL com permissões para criar bancos de dados, tabelas e executar comandos de backup.

## Como rodar o projeto

### 1. Criar o banco de dados e tabelas

Execute o script `01-criacao_base.sql` no MySQL para criar a base de dados e as tabelas necessárias. Você pode rodar este script diretamente no MySQL Workbench ou usar o terminal MySQL:

```sql
SOURCE /caminho/para/o/arquivo/01-criacao_base.sql;

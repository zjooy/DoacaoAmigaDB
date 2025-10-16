# 🫶 Doação Amiga - Banco de Dados

Este repositório contém o **modelo e o script SQL** do sistema **Doação Amiga**, desenvolvido como parte do **projeto final** da disciplina de **Projeto Integrador II**.

---

## 🎯 Objetivo

Criar e manipular um banco de dados relacional completo, incluindo:
- Modelagem de entidades e relacionamentos;
- Definição de chaves primárias e estrangeiras;
- Implementação de operações de manipulação de dados (DML);
- Controle de versionamento com **Git e GitHub**.

---

## 🗄️ Estrutura do Banco de Dados

O sistema inclui as seguintes tabelas:

- **TipoUsuario** → Define se o usuário é *Doador* ou *Beneficiário*  
- **Categoria** → Armazena as categorias dos itens (Roupas, Alimentos etc.)  
- **Usuario** → Registra os usuários do sistema  
- **Solicitacao** → Controla as solicitações de ajuda  
- **Doacao** → Armazena as doações realizadas  
- **Mensagem** → Permite o envio de mensagens entre usuários envolvidos em uma doação  

---

## 🧩 Relacionamentos Principais

- Um **TipoUsuario** pode estar associado a vários **Usuários**  
- Um **Usuário** pode fazer várias **Solicitações** e **Doações**  
- Cada **Solicitação** pertence a uma **Categoria**  
- Uma **Doação** está associada a uma **Solicitação**  
- Uma **Mensagem** está vinculada a uma **Doação** e a um **Usuário**

---

## 🧠 Tecnologias Utilizadas
- **SQL Server**
- **T-SQL**
- **Git / GitHub**

---

## ⚙️ Como executar o script

1. Crie um novo banco de dados no SQL Server:
   ```sql
   CREATE DATABASE DoacaoAmiga;
   GO
   USE DoacaoAmiga;
   GO
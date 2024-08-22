# Sistema de Gerenciamento de Tarefas (To-Do List) - Yii2

## Descrição do Projeto

Este repositório contém a implementação de um sistema de gerenciamento de tarefas usando o framework Yii2. O objetivo deste projeto é fornecer uma aplicação web que permita aos usuários gerenciar suas tarefas de maneira eficiente.

## Funcionalidades

O sistema oferece as seguintes funcionalidades:

### 1. Autenticação e Autorização
- **Registro e Login:** Usuários podem se registrar e fazer login na aplicação.
- **Acesso Restrito:** Todos os usuários podem visualizar as tarefas, mas para fazer operações (criação, update, delete) é necessário que o usuário se autentique com suas credenciais.

### 2. Gerenciamento de Tarefas
- **Criação de Tarefas:** Adição de novas tarefas com título, descrição, data de vencimento e status (pendente, em progresso, concluída).
- **Edição de Tarefas:** Possibilidade de editar os atributos de tarefas existentes.
- **Exclusão de Tarefas:** Usuários podem excluir tarefas.
- **Listagem de Tarefas:** Visualização de todas as tarefas com opções de filtragem por status e data de vencimento.
- **Ordenação de Tarefas:** Tarefas podem ser ordenadas por data de vencimento.

### 3. Interface e Notificações
- **Notificações:** Mensagens de sucesso são exibidas ao criar, editar ou excluir tarefas.

## Características Técnicas

- **Framework:** Desenvolvido utilizando o Yii2, seguindo o padrão MVC.
- **Banco de Dados:** Utilização do MySQL para armazenamento de dados, com migrations para criação das tabelas.
- **Boas Práticas de Codificação:**
  - Uso de componentes e widgets do Yii2 conforme necessário.

## Instalação e Configuração

Para instalar e configurar o projeto, siga os passos abaixo:

1. **Clone o Repositório:**
   ```bash
   git clone https://github.com/marcellyhc/yii_exercise
   cd yii_exercise
   ```

2. **Rode o Docker-Compose:**
   ```bash
   docker-compose up
   ```

3. **Acesse a Aplicação:**
   - Abra o navegador e acesse `http://localhost:8080`.


## Licença

Este projeto está licenciado sob a [MIT License](https://github.com/marcellyhc/yii_exercise/blob/main/LICENSE).

---


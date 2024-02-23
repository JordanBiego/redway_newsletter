# Projeto de Teste Redway Newsletter

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/JordanBiego/redway_newsletter/blob/develop/README.md)

## Descrição

Este projeto é uma aplicação de teste para uma vaga na Redway. É um aplicativo simples de newsletter projetado para permitir que os usuários se inscrevam e recebam um e-mail de confirmação com um link para o blog. Além disso, há um recurso de administrador que permite aos administradores da Redway fazer o download de uma lista contendo todos os e-mails enviados pelos usuários.

## Requisitos

- **Docker**;
- **Docker-compose**;

## Features

- **Inscrição na Newsletter:** Os usuários podem inserir seu e-mail e nome para receber newsletters por e-mail após a inscrição;
- **Seletor de Idioma:** Este aplicativo tem traduções em inglês e português;
- **Admin:** Os administradores da Redway podem acessar a página de administração para ver uma lista com todos os leads inseridos e podem baixar a lista em um arquivo .TXT.

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/yourusername/redway-newsletter.git
2. Navegue na pasta do projeto clonado:
    ```bash
    cd redway-newsletter
3. Crie o container com o Docker:
    ```bash
    docker-compose build
4. Execute as migrações:
    ```bash
    docker-compose run web bin/rails db:migrate
5. Execute o seed para popular o banco de dados:
    ```bash
    docker-compose run web bin/rails db:seed
        
5.1. Para fazer funcionar o sistema de envio de emails, renomeie o arquivo `env.exemple` na raiz do projeto, para `.env` e coloque as variaveis recebidas por email:
   ```bash
   #./.env
   # paste the variables bello
   EMAIL=''
   PASSWORD=''
   SENDGRID_API_KEY=''
   ```
6. Suba o servidor:
    ```bash
    docker-compose up
7. Visite http://localhost:3000 no seu browser.

## Usabilidade

1. Acesse o aplicativo em http://localhost:3000.
2. Os usuários podem se inscrever para receber newsletters inserindo seu e-mail e nome.
3. Os usuários recebem um e-mail de confirmação com um link para o blog.
4. Os administradores da Redway podem fazer o login usando as credenciais fornecidas (verifique o arquivo de seed) e baixar uma lista de todos os e-mails enviados pelos usuários.

## Licença:

Este projeto é puramente educacional. Por favor, não redistribua sem consentimento!

# Projeto de Teste Redway Newsletter

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/JordanBiego/redway_newsletter/blob/develop/README.md)

## Descrição

Este projeto é uma aplicação de teste para uma vaga na Redway. É um aplicativo simples de newsletter projetado para permitir que os usuários se inscrevam e recebam um e-mail de confirmação com um link para o blog. Além disso, há um recurso de administrador que permite aos administradores da Redway fazer o download de uma lista contendo todos os e-mails enviados pelos usuários.

## Features

- **Inscrição na Newsletter:** Os usuários podem inserir seu e-mail e nome para receber newsletters por e-mail após a inscrição;
- **Seletor de Idioma:** Este aplicativo tem traduções em inglês e português;
- **Admin:** Os administradores da Redway podem acessar a página de administração para ver uma lista com todos os leads inseridos e podem baixar a lista em um arquivo .TXT.

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/yourusername/redway-newsletter.git
2.Navegue até o diretório do projeto:
    ```bash
    cd redway-newsletter
3. Construa os containers Docker:
    ```bash
      docker-compose build
4. Execute o seed para o login do Admin:
     ```bash
     docker-compose run web bin/rails db:seed
5. Execute o aplicativo:
     ```bash
     docker-compose up
6. Acesse http://localhost:3000 no seu navegador.

## Usabilidade

1. Acesse o aplicativo em http://localhost:3000.
2. Os usuários podem se inscrever para receber newsletters inserindo seu e-mail e nome.
3. Os usuários recebem um e-mail de confirmação com um link para o blog.
4. Os administradores da Redway podem fazer o login usando as credenciais fornecidas (verifique o arquivo de seed) e baixar uma lista de todos os e-mails enviados pelos usuários.

## Licença:

Este projeto é puramente educacional. Por favor, não redistribua sem consentimento!

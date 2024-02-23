# Redway Newsletter Test Project

[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/JordanBiego/redway_newsletter/blob/develop/README.pt-br.md)

## Description

This project is a test application for a job at Redway. It is a simple newsletter app designed to allow users to sign up for newsletters and receive a confirmation email with a blog link. Additionally, there is an admin feature that enables Redway administrators to download a list containing all the emails submitted by users.

## Requirements

- **Docker**;
- **Docker-compose**;

## Features

- **Newsletter Signup:** Users can enter their email and name to receive newsletters via email upon signup;
- **Language selector:** This app has English and Portuguese translations;
- **Admin:** Redway administrators can enter the admin page to see a list with all the leads imputed, and can download the list to a .TXT too.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/redway-newsletter.git
2. Navigate to the project directory:
    ```bash
    cd redway-newsletter
3. Build the Docker containers:
    ```bash
    docker-compose build
4. Run the migrations:
    ```bash
    docker-compose run web bin/rails db:migrate
5. Run the seed for the Admin login:
    ```bash
    docker-compose run web bin/rails db:seed
6. Run the app:
    ```bash
    docker-compose up
7. Visit http://localhost:3000 in your browser.

## Usage

1. Access the application at http://localhost:3000.
2. Users can sign up for newsletters by entering their email and name.
3. Users receive a confirmation email with a blog link.
4. Redway administrators can download a list of all user-submitted emails.

## License:

This project is purely educational, please do not redistribute without consent!


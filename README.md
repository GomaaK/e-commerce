# e-commerce
The idea is to take readers through the day to day activity of a developer takeling various levels of problems.

I will use [trello](https://trello.com/b/QCZMwrnv/e-commerce) to plan my work. It can also give an insight in how to plan and decompose a project.

# More about the project

The project will feature:
- **Basic** product landing page that is features the hottest product.
- Product listing with caching
- Product advanced search
- Orders submissions and payments
- Orders tracking

# Disclamer

By creating this I don't claim:
- This is the best way to implement such project
- This is the best process to follow in development
- This is the ideal technologies to use for each component created

This is only my way of answering my students recurring questions while giving them a taste of how I would approach things.


## Ruby version
  2.3.1

## System dependencies

To run this project you only need:
- [Docker](https://docs.docker.com/engine/installation/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Configuration

Create your own version of the `.env` file using `.env.example` as a reference

## Run the server

run `docker-compose up --build` and go to your `0.0.0.0:RAILS_PORT`

## How to run the test suite

`docker-compose build && docker-compose run railsapp rspec`

## Deployment instructions

CI with CircleCI

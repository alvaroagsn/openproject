#!/usr/bin/env bash
# Exit on error
set -o errexit

# Instala as dependências do Ruby
bundle install

# Instala as dependências do Node (caso tenha frontend)
cd frontend
npm install
npm run build
cd ..

# Compila os assets do Rails
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Realiza as migrações do banco de dados (se necessário)
bundle exec rails db:migrate

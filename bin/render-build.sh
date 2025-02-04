#!/usr/bin/env bash
# Exit on error
set -o errexit

# Instala as dependências do Ruby
bundle install

# Instala as dependências do Node (caso tenha frontend)
cd frontend
npm install
npm install asciify-image --save
npm run build
cd ..

# Compila os assets do Rails
bundle exec rails assets:precompile
bundle exec rails assets:clean

RAILS_ENV=${RAILS_ENV:-development}
bundle exec rails db:migrate

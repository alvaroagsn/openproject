#!/bin/bash

# Sai imediatamente se algum comando falhar
set -e

echo "Instalando dependências do Ruby..."
bundle install

echo "Rodando migrações do banco de dados..."
rails db:migrate

# Iniciando os serviços em paralelo corretamente
echo "Iniciando o frontend e o backend..."

# Inicia o frontend e backend corretamente em paralelo
( npm run serve & ) && bundle exec rails server

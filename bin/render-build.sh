#!/bin/bash

echo "Iniciando a configuração do ambiente..."

# Define o ambiente de produção
#export RAILS_ENV=production

# Instala as dependências do Ruby
echo "Instalando dependências do backend..."
bundle install

# Executa as migrações do banco de dados
echo "Rodando migrações do banco de dados..."
bundle exec rails db:migrate

# Inicia o backend na porta fornecida pelo Render
echo "Iniciando o servidor Rails..."
bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
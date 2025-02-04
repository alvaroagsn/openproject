#!/bin/bash

# Instala as dependências do Ruby
bundle install

# Navega para o diretório frontend
cd frontend

# Instala as dependências do Node.js
npm install

# Volta para o diretório raiz do projeto
cd ..

# Inicia o backend (substitua pelo comando que você usa para iniciar o backend)
# Exemplo: rails server
bundle exec rails server
#!/bin/bash

# Instala as dependências do Ruby
bundle install

# Navega para o diretório frontend
#cd frontend

# Instala as dependências do Node.js
#npm install

# Volta para o diretório raiz do projeto
#cd ..

rails db:migrate

rails server

# Inicia o frontend e o backend em paralelo
# Substitua os comandos abaixo pelos comandos que você usa para iniciar o frontend e o backend
npm run serve & bundle exec rails server


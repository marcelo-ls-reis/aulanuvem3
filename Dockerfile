# Escolha uma imagem base do Node.js
FROM node:12

# Defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json (se disponível)
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie os outros arquivos do projeto
COPY . .

# Exponha a porta que sua app usa
EXPOSE 3000

# Defina o comando para rodar sua aplicação
CMD [ "node", "index.js" ]

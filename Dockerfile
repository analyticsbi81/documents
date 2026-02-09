FROM node:22-bookworm-slim

# Segurança e previsibilidade
ENV NODE_ENV=production

WORKDIR /app

# Instala o docsify-cli na versão mais recente disponível no build
RUN npm install -g docsify-cli@latest \
  && npm cache clean --force

# Pasta padrão dos arquivos do site (montada via volume)
RUN mkdir -p /docs

EXPOSE 3000

# docsify-cli 4.x não expõe flag de host; removemos --listen (inexistente).
CMD ["docsify", "serve", "/docs", "--port", "3000"]

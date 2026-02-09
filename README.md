# Docsify no Docker (Debian slim)

Este projeto sobe um servidor de documentação com **Docsify** usando **Docker** baseado em **Debian slim** (não Alpine) e um visual “Notion-like”.

## Como executar

```bash
chmod +x run.sh
./run.sh
```

Depois acesse `http://localhost:3000`.

## Onde editar

- Conteúdo: `docs/README.md` (página inicial) e demais arquivos dentro de `docs/`
- Navegação: `docs/_sidebar.md` e `docs/_navbar.md`
- Tema: `docs/assets/notion.css`

## Atualizar para “última versão”

O `Dockerfile` instala `docsify-cli@latest` durante o build. Para atualizar, rode novamente:

```bash
docker compose build --no-cache
docker compose up
```

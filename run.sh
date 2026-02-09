#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker não encontrado no PATH."
  exit 1
fi

# Verifica se o daemon está acessível (ex.: Docker Desktop rodando no macOS)
if ! docker info >/dev/null 2>&1; then
  echo "Não foi possível conectar ao Docker daemon."
  echo "No macOS, inicie o Docker Desktop e tente novamente."
  exit 1
fi

# Subir em foreground (Ctrl+C para parar). Rebuild pega a última versão do docsify-cli.
docker compose up --build

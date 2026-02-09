# Dados e Consultas

Este grupo cobre como o BI **se conecta** às fontes (bancos, APIs, arquivos/planilhas), como **ingere** dados e como permite **construir consultas** para análise.

## Itens e explicação

- **10.** Permitir integração direta com bancos de dados relacionais (Oracle, SQL Server, PostgreSQL, MySQL, MariaDB, Sybase, Firebird e SQLite).  
  - **Explicação**: conectores/driver para ler dados de SGBDs tradicionais, com autenticação e performance adequadas.

- **11.** Permitir integração com bancos analíticos e de alta performance, como ClickHouse e AmazonRedshift.  
  - **Explicação**: suporte a motores analíticos/colunares e data warehouses comuns em BI.

- **12.** Permitir comunicação com APIs e Web Services no formato REST (JSON), com autenticação e parâmetros dinâmicos.  
  - **Explicação**: consumir dados via REST, inclusive com headers/tokens e parâmetros variáveis (datas, filtros, paginação).

- **13.** Permitir importação de arquivos e planilhas nos formatos CSV, XLS, XLSX, ODS e integração com Google Planilhas.  
  - **Explicação**: importar dados “tabulares” de arquivos e também conectar a planilhas online.

- **14.** Apresentar funcionalidade de importação direta de planilhas institucionais e logs de importação agendada.  
  - **Explicação**: automatizar ingestão recorrente de planilhas (com histórico/logs para auditoria e troubleshooting).

- **15.** Disponibilizar montador visual de consultas SQL (editor de tabelas) para criação de consultas personalizadas.  
  - **Explicação**: permitir montar SQL com auxílio visual (tabelas, joins, seleção de campos), reduzindo necessidade de codificação manual.


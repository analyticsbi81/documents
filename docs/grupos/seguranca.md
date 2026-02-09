# Segurança, conformidade, identidade e auditoria

Este grupo reúne requisitos de **segurança da informação**, **autenticação**, **autorização**, **conformidade** e **auditoria** — fundamentais para um sistema de BI, pois ele centraliza dados sensíveis e distribui informações para múltiplos perfis.

## Itens e explicação

- **1.** Permitir a execução do sistema em ambiente Linux, com acesso via protocolo HTTPS e criptografia de ponta a ponta.  
  - **Caminho**: 
  - **Explicação**: o BI deve operar em servidores Linux e proteger o tráfego com TLS/HTTPS (e, quando aplicável, criptografia no caminho completo entre componentes).

- **2.** Permitir o armazenamento de senhas criptografadas, utilizando algoritmo seguro e política de senhas fortes.  
  - **Caminho**: 
  - **Explicação**: senhas devem ser armazenadas com hash seguro (ex.: bcrypt/argon2) e regras de complexidade/expiração/bloqueio.

- **3.** Permitir o envio de notificação por e-mail em cada login realizado e garantir proteção contra ataques de força bruta, hijacking, fixation e injection (SQL/XSS/CSRF).  
  - **Caminho**: 
  - **Explicação**: rastreabilidade de acessos (alerta de login) e controles contra ataques comuns em aplicações web.

- **4.** Permitir autenticação em dois fatores (2FA TOTP) para usuários do sistema.  
  - **Caminho**: 
  - **Explicação**: exigir (ou permitir) segundo fator por aplicativo autenticador (TOTP) para reduzir risco de credenciais vazadas.

- **5.** Permitir integração com Active Directory (AD/LDAP) e login via Google Workspace (Google Business).  
  - **Caminho**: 
  - **Explicação**: integrar com provedores corporativos para centralizar usuários e políticas (SSO/identidade).

- **6.** Assegurar conformidade com a Lei Geral de Proteção de Dados (LGPD). 
  - **Caminho**: 
  - **Explicação**: garantir bases legais, controles de acesso, rastreabilidade, minimização, retenção e governança de dados pessoais.

- **7.** Apresentar logs detalhados de todas as operações realizadas, incluindo acessos ao sistema, tentativas de login mal-sucedidas, execução de relatórios e dashboards, requisições via API, envio de e-mails e importações automáticas.  
  - **Caminho**: 
  - **Explicação**: auditoria completa para investigar incidentes e comprovar ações (quem fez o quê, quando e de onde).

- **8.** Permitir a definição de sistema de permissões granulares, por usuário individual, grupo institucional e tipo de conteúdo (relatório, dashboard, agendamento), com permissões estendidas de criar, editar, compartilhar e agendar.  
  - **Caminho**: 
  - **Explicação**: RBAC/ACL por objeto e por ação (visualizar, editar, publicar, compartilhar, agendar).

- **9.** Executar testes de segurança contínuos com base nas recomendações OWASP TOP 10 e MITRE CVE.  
  - **Caminho**: 
  - **Explicação**: manter processo de segurança contínua (SAST/DAST, scans de CVE, correções e hardening).

- **35.** Registrar logs de geração, tempo de execução e e-mails enviados.  
  - **Caminho**: 
  - **Explicação**: auditoria operacional de relatórios/dashboards (performance e trilha de distribuição).

- **46.** Permitir envio de conteúdo com login personificado, mantendo o contexto e as permissões do usuário.  
  - **Caminho**: 
  - **Explicação**: envio/visualização deve respeitar o contexto do usuário (sem “vazar” dados fora das permissões).

- **53.** Permitir login único (SSO) via API, Google ou AD/LDAP.  
  - **Caminho**: 
  - **Explicação**: autenticação integrada (SSO) para reduzir fricção e centralizar controle de acesso.

- **54.** Garantir operação plena nos navegadores homologados, mediante testes de segurança e homologação prévia.  
  - **Caminho**: 
  - **Explicação**: exigir validação/homologação com foco em segurança e compatibilidade do ambiente corporativo.


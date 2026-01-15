# Automação de Testes Web com Robot Framework e Playwright

Projeto de automação de testes web utilizando Robot Framework com Browser Library (Playwright),
focado em boas práticas, BDD e reutilização de código.

## 🛠 Tecnologias
- Robot Framework
- Browser Library (Playwright)
- Python
- Chromium

## 🧪 Cenários Automatizados
- Login com email inválido
- Recuperação de conta
- Criação de nova conta

## 📁 Estrutura do Projeto
- resources/ → Keywords reutilizáveis
- tests/ → Casos de teste (BDD)

## ▶️ Como executar

### 1️⃣ Instalar dependências
```bash
pip install robotframework robotframework-browser
rfbrowser init

### Comando para executar os testes
robot tests/

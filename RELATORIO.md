# Relatório – Técnicas de Teste de Software

## Disciplina: Teste de Software
## Projeto: Identifier (Elixir + ExUnit)

---

# 1. Objetivo

Implementar casos de teste utilizando as técnicas:

- Particionamento de Equivalência
- Análise de Valor Limite

Os testes foram implementados utilizando a linguagem Elixir e o framework ExUnit.

---

# 2. Descrição do Sistema

O sistema implementa uma função que valida identificadores segundo as seguintes regras:

- Deve iniciar com letra
- Pode conter letras, números e underscore (_)
- Deve possuir entre 3 e 10 caracteres

Função implementada:

Identifier.valid?/1

---

# 3. Técnicas Aplicadas

## 3.1 Particionamento de Equivalência

Foram identificadas as seguintes classes:

### Classes Válidas
- String iniciando com letra
- Tamanho entre 3 e 10 caracteres
- Apenas caracteres permitidos

### Classes Inválidas
- Início com número
- Presença de caracteres especiais
- Tamanho inferior a 3
- Tamanho superior a 10

---

## 3.2 Análise de Valor Limite

Foram testados os seguintes limites:

- 2 caracteres (inválido)
- 3 caracteres (válido)
- 10 caracteres (válido)
- 11 caracteres (inválido)

---

# 4. Casos de Teste Implementados

Os testes foram implementados no arquivo:

test/identifier_test.exs

Utilizando:

- assert
- refute

---

# 5. Execução dos Testes

Comando utilizado:

mix test

---

# 6. Cobertura de Código

Cobertura gerada com:

mix test --cover

Resultado obtido: cobertura superior a 90%.

---

# 7. Conclusão

A aplicação das técnicas de teste funcional permitiu reduzir o universo de testes possíveis e selecionar casos com maior probabilidade de revelar defeitos, garantindo qualidade e rastreabilidade.
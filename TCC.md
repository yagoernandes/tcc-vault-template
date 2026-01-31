---
title: "Aplicação de Arquitetura Hexagonal em um SaaS Multi-Tenant: um Estudo de Caso"
author: Yago Ernandes Dourado
date: "2026"
lang: pt-BR
bibliography: referencias.bib
csl: abnt.csl
---

# Introdução

A adoção de arquiteturas de software orientadas a domínio tem sido utilizada para reduzir o acoplamento entre regras de negócio e detalhes de infraestrutura, como bancos de dados, filas e serviços externos [@evans2003]. Em particular, a Arquitetura Hexagonal (Ports and Adapters) propõe a organização do sistema em torno do domínio, permitindo que interfaces definidas pelo núcleo controlem como dependências externas são acessadas [@cockburn2005]...

No contexto de aplicações SaaS multi-tenant, onde uma única base de código atende múltiplas organizações com isolamento lógico de dados [@bezemer2010], decisões arquiteturais impactam diretamente a manutenibilidade, a observabilidade e a capacidade de evolução do produto [@martin2018]. Assim, este trabalho discute a aplicação da Arquitetura Hexagonal em um cenário multi-tenant, analisando benefícios, limitações e implicações práticas na implementação...

## Objetivo

O objetivo deste trabalho é descrever e avaliar um arranjo arquitetural baseado em Ports and Adapters para uma aplicação SaaS multi-tenant, considerando critérios de separação de responsabilidades, testabilidade e extensibilidade.

## Organização do trabalho

Além desta introdução, o Capítulo 2 apresenta a fundamentação teórica, o Capítulo 3 descreve o estudo de caso e o Capítulo 4 discute os resultados.


## 1) Elementos pré-textuais (antes do texto)

Reúnem informações de identificação e organização do trabalho. Em geral, **não entram no sumário** (o sumário lista apenas o que vem depois dele).

- **Epígrafe** (opcional)  
    Pode aparecer antes do texto e também nas aberturas de seções primárias (capítulos), se desejado.
    
- **Resumo (em português)** (obrigatório)
    
    - Deve ter **entre 150 e 500 palavras**.
    - **Espaçamento simples**, **sem recuo** na primeira linha, em **bloco único**.
    - Deve conter: **objetivo, método, resultados e conclusões**.
    - Redação em **voz ativa**, **3ª pessoa do singular**.
    - Logo abaixo: **Palavras-chave**, iniciando com **letra maiúscula** e **separadas por ponto**.
- **Abstract (em inglês)** (obrigatório)
    
    - Mesmo padrão do resumo em português (estrutura e características).
    - Na “referência” do abstract, **título e subtítulo devem estar em inglês**.
    - Logo abaixo: **Keywords**.
- **Resumo em terceira língua** (opcional)  
    Pode ser acrescentado (ex.: _resumen_, _résumé_), mantendo o mesmo conteúdo do resumo em português, apenas em outro idioma.
    
- **Lista de ilustrações** (opcional)
    
    - Deve iniciar **em nova página**.
    - **Título centralizado**.
    - Lista por tipo (ex.: “Figura 1 …”, “Figura 2 …”) com paginação.
- **Lista de abreviaturas e siglas** (opcional)
    
    - Deve iniciar **em nova página**.
    - **Título centralizado**.
    - Itens no formato sigla → significado.
- **Sumário** (obrigatório)
    
    - Apresenta a estrutura de seções e subseções e a paginação.
    - **Elementos pré-textuais não podem constar no sumário**; entram apenas os elementos que o sucedem (seções/capítulos e itens pós-textuais quando aplicável).
    - Se houver mais de um volume, o sumário completo deve aparecer em todos.

## 2) Elementos textuais (corpo do trabalho)

É o conteúdo principal, organizado em seções numeradas:

- **Seções primárias (capítulos)**: “1 …”, “2 …” etc.
    - **Cada seção primária deve iniciar em uma nova folha (nova página)**.
- **Subseções**: “1.1”, “1.1.1”, “1.1.1.1” etc., conforme a profundidade necessária.
- Os títulos das seções ficam a critério do autor (ex.: Introdução, Revisão, Metodologia etc.).

## 3) Elementos pós-textuais (depois do texto)

Complementam o trabalho:

- **Referências** (obrigatório)  
    Lista final de todas as fontes citadas, formatadas conforme as normas aplicáveis.
    
- **Glossário** (opcional)  
    Lista de termos técnicos usados no texto com suas definições.
    
- **Apêndice(s)** (opcional)  
    Material produzido pelo autor (ex.: “APÊNDICE A – …”).
    
- **Anexo(s)** (opcional)  
    Material não produzido pelo autor, apenas incorporado (ex.: “ANEXO A – …”).
    
- **Índice** (opcional, quando aplicável)
    
# Referências

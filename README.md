<!-- sonnda-contracts/README.md -->
# Sonnda Contracts

Fonte de verdade modular do contrato HTTP da Sonnda.

- `openapi.yaml` é o ponto de entrada editável.
- `openapi/` contém paths e componentes modularizados.
- `dist/openapi.yaml` é o bundle gerado e publicado para consumidores.

## Desenvolvimento

```bash
make validate-bundle
make test
```

Para comparar o contrato atual com um bundle anterior, execute:

```bash
make breaking-check BASE=path/to/previous-openapi.yaml
```

## Releases

Uma tag SemVer no formato `v*` executa o workflow de release. Ele valida o
contrato, gera o bundle e publica os assets `openapi.yaml` e
`openapi.yaml.sha256` no GitHub Release correspondente.

Os consumidores fixam a versão e o SHA-256 do bundle em seu `contracts.lock`.
Depois de atualizar esse arquivo, usam seu gerador local para baixar, verificar
e gerar os artefatos específicos da linguagem.

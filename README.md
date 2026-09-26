<!-- sonnda-contracts/README.md -->
# Sonnda Contracts

Fonte de verdade modular do contrato HTTP da Sonnda.

- `openapi.yaml` é o ponto de entrada editável.
- `openapi/` contém paths e componentes modularizados.
- `dist/openapi.yaml` é o bundle gerado para consumidores.

## Desenvolvimento

```bash
make validate
make bundle
make test
```

Nesta primeira etapa, `sonnda-api` consome o bundle local em `../sonnda-contracts/dist/openapi.yaml`. A publicação por versão, checksum e `contracts.lock` será adicionada quando este projeto tiver um repositório remoto e uma política de releases.

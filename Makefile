# sonnda-contracts/Makefile
OPENAPI_SPEC := openapi.yaml
OPENAPI_BUNDLE := dist/openapi.yaml

.PHONY: validate bundle validate-bundle test

validate:
	go run ./cmd/openapi-validate -file $(OPENAPI_SPEC)

bundle: validate
	go run ./cmd/openapi-bundle -input $(OPENAPI_SPEC) -output $(OPENAPI_BUNDLE)

validate-bundle: bundle
	go run ./cmd/openapi-validate -file $(OPENAPI_BUNDLE)

test:
	go test ./...

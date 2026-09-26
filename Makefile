# sonnda-contracts/Makefile
OPENAPI_SPEC := openapi.yaml
OPENAPI_BUNDLE := dist/openapi.yaml

.PHONY: validate bundle validate-bundle test breaking-check

validate:
	go run ./cmd/openapi-validate -file $(OPENAPI_SPEC)

bundle: validate
	go run ./cmd/openapi-bundle -input $(OPENAPI_SPEC) -output $(OPENAPI_BUNDLE)

validate-bundle: bundle
	go run ./cmd/openapi-validate -file $(OPENAPI_BUNDLE)

test:
	go test ./...

breaking-check:
	go run github.com/oasdiff/oasdiff@v1.11.7 breaking $(BASE) $(OPENAPI_BUNDLE)

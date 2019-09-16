build:
	@go install -v -mod=vendor ./...

test:
	@go test -v -mod=vendor ./...

testrace:
	@go test -mod=vendor -v --race ./...

vet:
	@go vet ./...

fmt:
	@./scripts/gofmt ./...

lint: bin/golint
	@./bin/golint -set_exit_status $(shell go list ./...)

testall: testrace vet fmt lint

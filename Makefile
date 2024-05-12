# Go parameters
GOCMD = go
GOOS=linux
CGO_ENABLED=0
GOBUILD = $(GOCMD) build
GOCLEAN = $(GOCMD) clean
GOTEST = $(GOCMD) test
GOGET = $(GOCMD) get

# Name of the binary executable
BINARY_NAME = bootstrap

# Main package path
MAIN_PATH = main.go

all: clean test build

build:
	GOOS=${GOOS} CGO_ENABLED=${CGO_ENABLED} $(GOBUILD) -o $(BINARY_NAME) ${MAIN_PATH}

test:
	$(GOTEST) -v ./...


deps:
	${GOCMD} mod tidy


clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)

run:
	$(GOBUILD) -o $(BINARY_NAME) $(MAIN_PATH)
	./$(BINARY_NAME)

run-lambda: build invoke-lambda

invoke-lambda: 
	sam local invoke

.PHONY: all build test clean run deps

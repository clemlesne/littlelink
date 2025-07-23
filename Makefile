# Versioning
version_full ?= $(shell $(MAKE) --silent version-full)
version_small ?= $(shell $(MAKE) --silent version)
# Dev env
port := 8000

version:
	@bash cicd/version/version.sh -g . -c

version-full:
	@bash cicd/version/version.sh -g . -c -m

# Install dependencies and setup development environment
install:
	uvx pre-commit@4.2.0 install

# Run linting and code quality checks
lint:
	uvx pre-commit@4.2.0 run --all-files

# Start development server with live reload
dev:
	VERSION=$(version_full) hugo server -D --bind 0.0.0.0 --port $(port)

# Build the site for production
build:
	VERSION=$(version_full) hugo --gc --minify --baseURL $(url)

# Build the site for development (with drafts and future posts)
build-dev:
	VERSION=$(version_full) hugo --gc --minify --buildDrafts --buildFuture

# Clean build artifacts
clean:
	rm -rf public resources

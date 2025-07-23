port := 8000

# Install dependencies and setup development environment
install:
	uvx pre-commit@4.2.0 install

# Run linting and code quality checks
lint:
	uvx pre-commit@4.2.0 run --all-files

# Start development server with live reload
dev:
	hugo server -D --bind 0.0.0.0 --port $(port)

# Build the site for production
build:
	hugo --gc --minify --baseURL $(url)

# Build the site for development (with drafts and future posts)
build-dev:
	hugo --gc --minify --buildDrafts --buildFuture

# Clean build artifacts
clean:
	rm -rf public resources

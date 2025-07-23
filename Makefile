install:
	uvx pre-commit@4.2.0 install

lint:
	uvx pre-commit@4.2.0 run --all-files

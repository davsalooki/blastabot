.PHONY: run
run:
	@echo "Running the bot..."
	@node index.js

.PHONY: lint
lint:
	@echo "Linting..."
	@npx eslint .

.PHONY: format-check
format-check:
	@echo "Formatting..."
	@npx prettier --check .

.PHONY: format-fix
format-fix:
	@echo "Fixing formatting..."
	@npx prettier --write .

.PHONY: test
test:
	@echo "Running tests..."
	@echo "no tests yet"
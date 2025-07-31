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

.PHONY: docker-build
docker-build:
	@echo "Building Docker image..."
	@docker build -t blastabot .

.PHONY: docker-run
docker-run:
	@echo "Running Docker container..."
	@docker run -it --env-file .env blastabot
# Makefile for Prompt-and-Tag Workflow

SHELL := /bin/bash
PYTHON_VERSION := 3.9
VENV_DIR := .venv
REQUIREMENTS_FILE := requirements.txt

.PHONY: all setup install prompt-and-tag clean help
all: setup prompt-and-tag

# Setup the virtual environment and install dependencies
setup: $(VENV_DIR)/bin/activate

$(VENV_DIR)/bin/activate: $(REQUIREMENTS_FILE)
	test -d $(VENV_DIR) || python$(PYTHON_VERSION) -m venv $(VENV_DIR)
	. $(VENV_DIR)/bin/activate && pip install --upgrade pip
	. $(VENV_DIR)/bin/activate && pip install -r $(REQUIREMENTS_FILE)
	touch $(VENV_DIR)/bin/activate

# Install dependencies
install: setup

# Define the prompt-and-tag target
prompt-and-tag:
	$(eval TAG_NAME := llm-snapshot-$(shell date +%Y%m%d-%H%M%S))
	@echo "\033[1;36m🚀 Converting Codebase to Prompt and Tagging for LLM 🚀\033[0m"
	@code2prompt --path . > /tmp/${TAG_NAME}.txt
	@if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then \
		git tag -a -m "$(TAG_NAME)" $(TAG_NAME) > /dev/null 2>&1; \
		git push origin $(TAG_NAME) > /dev/null 2>&1; \
		echo "\033[1;32m✅ Created and pushed tag: \033[1;33m$(TAG_NAME)\033[0m"; \
	else \
		echo "\033[1;33m⚠️  Git repository not detected. Skipping tag creation and push.\033[0m"; \
	fi
	@echo
	@echo "\033[1;35mNext Steps:\033[0m"
	@echo "  1. 📋 Paste clipboard into LLM thread content"
	@echo "  2. 🏷️  (Optional) Copy the following to label content version"
	@echo
	@echo "     \033[1;34m\`Full Source: $(TAG_NAME)\`\033[0m"
	@echo

# Clean up the virtual environment
clean:
	rm -rf $(VENV_DIR)

# Create a requirements.txt file if it doesn't exist
$(REQUIREMENTS_FILE):
	@echo "Creating $(REQUIREMENTS_FILE)..."
	@echo "code2prompt" > $(REQUIREMENTS_FILE)

# Help target
help:
	@echo "Prompt-and-Tag Workflow Makefile"
	@echo "================================"
	@echo "Available targets:"
	@echo "  help         : Display this help message"
	@echo "  setup        : Set up the virtual environment and install dependencies"
	@echo "  install      : Alias for setup"
	@echo "  prompt-and-tag: Execute the Prompt-and-Tag workflow"
	@echo "  clean        : Remove the virtual environment"
	@echo "  all          : Run setup and prompt-and-tag"
	@echo ""
	@echo "Usage:"
	@echo "  make [target]"
	@echo ""
	@echo "Example:"
	@echo "  make prompt-and-tag"

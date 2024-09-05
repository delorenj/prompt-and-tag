# Prompt-and-Tag: Streamlining AI-Assisted Development 🚀🤖

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![Made with Make](https://img.shields.io/badge/Made%20with-Make-lightgrey)](https://www.gnu.org/software/make/)

Prompt-and-Tag is a tool designed to enhance AI-assisted development by seamlessly integrating your codebase with Large Language Models (LLMs). It creates synchronized snapshots of your code, making it easier to maintain context in AI conversations.

## What It Does 🎯

Prompt-and-Tag is a Makefile that:
1. 📸 Creates a snapshot of your codebase
2. 🏷️ Generates a unique Git tag
3. 🔄 Converts your code into an LLM-friendly format
4. 🔗 Provides a label for use in AI chats

This process ensures that your AI conversations are always in sync with the correct version of your code.

## Prerequisites 📋

- Python 3.9+
- Git
- Make

## Quick Start 🚀

1. Copy the Makefile into your project root.
2. Run:
   ```
   make setup
   ```
   This sets up a virtual environment and installs the necessary packages.

3. When you're ready to consult an AI, run:
   ```
   make prompt-and-tag
   ```

## Integration Into Your Workflow 🔄

1. **Develop**: Work on your project as usual.

2. **Prepare for AI Consultation**: Before starting a conversation with an LLM, run:
   ```
   make prompt-and-tag
   ```

3. **Use the Generated Label**: Copy the provided label.

4. **AI Interaction**: Paste the label into your AI chat. This ensures the AI knows exactly which version of the code you're discussing.

5. **Iterate**: Continue this cycle of development, tagging, and AI consultation as needed.

## Available Commands 🛠️

- `make help`: Displays all available commands
- `make setup`: Sets up your environment
- `make prompt-and-tag`: Creates your code snapshot and tag
- `make clean`: Removes the virtual environment

## Troubleshooting 🔍

- Ensure you have the correct Python version installed.
- Verify that you're in the correct directory when running commands.
- If issues persist, please open an issue in the repository.

## Contributing 🤝

We welcome contributions! If you've found a bug or have an idea for an improvement, please:
1. Fork the repository
2. Create a new branch for your feature
3. Commit your changes
4. Open a pull request

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Prompt-and-Tag aims to enhance your development process by bridging the gap between your codebase and AI assistants. We hope it proves to be a valuable addition to your workflow! 💻✨
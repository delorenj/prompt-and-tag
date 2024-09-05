<p align="center"><picture>
  <source media="(prefers-color-scheme: light)" srcset="https://private-user-images.githubusercontent.com/242611/364799621-e0875974-119c-4302-b5df-be6128973e76.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjU1NDM4MzksIm5iZiI6MTcyNTU0MzUzOSwicGF0aCI6Ii8yNDI2MTEvMzY0Nzk5NjIxLWUwODc1OTc0LTExOWMtNDMwMi1iNWRmLWJlNjEyODk3M2U3Ni5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwOTA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDkwNVQxMzM4NTlaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT01YTMwMTE1MzJlYTVhYjc3MTFjZjA0ZmQzNzU1MmEwMzNlNDczMjNkMGJmNzE2NGQ0YTNlNzRkMDYwMzczYTQwJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.Dn_zEhTmfRqlRfp7TymhsM0gzZ-cMKAAlvSMgOxUpd0">
  <img alt="Prompt-and-Tag Logo" src="https://private-user-images.githubusercontent.com/242611/364800311-80193d6d-1b76-4080-a10e-36de4d4ae1b0.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjU1NDM5NTUsIm5iZiI6MTcyNTU0MzY1NSwicGF0aCI6Ii8yNDI2MTEvMzY0ODAwMzExLTgwMTkzZDZkLTFiNzYtNDA4MC1hMTBlLTM2ZGU0ZDRhZTFiMC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjQwOTA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI0MDkwNVQxMzQwNTVaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jNTgxYzg3M2JiOTk5OGM2ZmQyMmUyNzA1YWU0YTNkMzIyMTI2MzQyNWFmYzkzMWNmMDA5ZWEwNzg2MTk0NzI3JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZhY3Rvcl9pZD0wJmtleV9pZD0wJnJlcG9faWQ9MCJ9.7_80mHPNCD6Q-Vd9c46l5HGRiXki0V95bOQhDKJ0YO8">
</picture></p>

# Prompt-and-Tag: Streamlining AI-Assisted Development 🚀🤖

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![Made with Make](https://img.shields.io/badge/Made%20with-Make-lightgrey)](https://www.gnu.org/software/make/)
[![Powered by code2prompt](https://img.shields.io/badge/Powered%20by-code2prompt-orange)](https://github.com/raphaelmansuy/code2prompt)

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
- code2prompt

## Quick Start 🚀

1. Copy the Makefile into your project root.
2. Run:
   ``` shell
   make setup
   ```
   This sets up a virtual environment and installs the necessary packages.

3. When you're ready to consult an AI, run:
   ``` shell
   make prompt-and-tag
   ```

## Integration Into Your Workflow 🔄

1. **Develop**: Work on your project as usual.

2. **Prepare for AI Consultation**: Before starting a conversation with an LLM, run:
   ``` shell
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

## But wait, what do I do if my codebase is huuuuuge? 🤯

If you're working with a large codebase, there are a ton of ways to work around this thanks to the robust code2prompt filters provided. You can build custom filters for `code2prompt` to limit the scope of the code snapshot and codify it as a `make` target.

For conversations about deployment, IaC, and infrastructure, I might only want to include the following files:

``` shell
code2prompt --path . --filter "Dockerfile, *.yml, *.md, Makefile" --exclude "venv, node_modules, dist, build, tests"

```

I can then add this as a target in my Makefile

``` Makefile
prompt-and-tag-deployment:
   # ... existing code
    code2prompt --path . --filter "Dockerfile, *.yml, *.md, Makefile" --exclude "venv, node_modules, dist, build, tests" > prompt-and-tag-deployment.txt
   # ... the rest of the make target

```


## Contributing 🤝

We welcome contributions! If you've found a bug or have an idea for an improvement, please:
1. Fork the repository
2. Create a new branch for your feature
3. Commit your changes
4. Open a pull request

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements 🙏

This project utilizes [code2prompt](https://github.com/raphaelmansuy/code2prompt), a tool for converting code to LLM-friendly prompts. I use it all the time and am grateful for Raphael's contribution to the AI-assisted development community. Perhaps this tool can be extended to support the prompt and tag workflow. We shall see!

---

Prompt-and-Tag aims to enhance your development process by bridging the gap between your codebase and AI assistants. I hope it proves to be a valuable addition to your workflow! 💻✨
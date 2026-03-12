# Homebrew Tap for NexHealth

Official [Homebrew](https://brew.sh) tap for NexHealth developer tools.

## Installation

```bash
brew tap nex-health/nexhealth
brew install nexhealth
```

## Upgrade

```bash
brew upgrade nexhealth
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `nexhealth` | [NexHealth CLI](https://github.com/nex-health/nexhealth-cli) — developer CLI for the NexHealth API |

## Adding a New Formula

To add another package to this tap, create a new `.rb` file in the `Formula/` directory:

```
Formula/
  nexhealth.rb       # existing CLI formula
  your-tool.rb       # new formula
```

Users can then install it with:

```bash
brew install nex-health/nexhealth/your-tool
```

See the [Homebrew formula cookbook](https://docs.brew.sh/Formula-Cookbook) for authoring guidance.

## More Information

- [NexHealth CLI documentation](https://github.com/nex-health/nexhealth-cli)
- [NexHealth API reference](https://docs.nexhealth.com)

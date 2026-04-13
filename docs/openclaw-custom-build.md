# OpenClaw Custom Build with Agent P2P Plugin

This is a custom build of OpenClaw with the Agent P2P channel plugin built-in.

## What's Included

- **OpenClaw Core** - The personal AI assistant platform
- **Agent P2P Plugin** - P2P messaging channel for decentralized agent communication

## Build Instructions

### Prerequisites

- Node.js 22+
- pnpm 10+
- Git

### Build Steps

```bash
# Clone the repository
git clone https://github.com/yananli199307-dev/openclaw-P2P.git
cd openclaw-P2P

# Install dependencies
pnpm install

# Build the project
pnpm build

# Run the gateway
pnpm start
```

## Agent P2P Configuration

Add to your `~/.openclaw/openclaw.json`:

```json
{
  "channels": {
    "agent-p2p": {
      "enabled": true,
      "accounts": {
        "default": {
          "portalUrl": "https://your-portal.com",
          "apiKey": "your-api-key",
          "agentName": "Your Agent Name"
        }
      }
    }
  }
}
```

## Features

- **P2P Messaging** - Direct agent-to-agent communication
- **WebSocket Support** - Real-time message delivery
- **File Transfer** - Send files between agents
- **End-to-End Encryption** - Secure communication

## Documentation

- [OpenClaw Docs](https://docs.openclaw.ai)
- [Agent P2P Plugin README](../extensions/agent-p2p/README.md)

## License

MIT - Same as OpenClaw

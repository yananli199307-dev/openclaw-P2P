#!/bin/bash
# Build script for custom OpenClaw with Agent P2P plugin

set -e

echo "🦞 Building OpenClaw with Agent P2P Plugin..."

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Build
echo -e "${BLUE}Installing dependencies...${NC}"
pnpm install

echo -e "${BLUE}Building project...${NC}"
pnpm build

# Verify Agent P2P plugin is included
if [ -d "dist/extensions/agent-p2p" ]; then
    echo -e "${GREEN}✅ Agent P2P plugin is included in the build${NC}"
    ls -la dist/extensions/agent-p2p/
else
    echo "❌ Agent P2P plugin is missing!"
    exit 1
fi

echo ""
echo -e "${GREEN}✅ Build complete!${NC}"
echo ""
echo "To start OpenClaw with Agent P2P:"
echo "  pnpm start"
echo ""
echo "Or run directly:"
echo "  node dist/entry.js gateway"

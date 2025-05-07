#!/bin/bash

echo "🔧 Checking and Installing DNSAttack Dependencies..."

# Define package-to-tool mapping
declare -A packages
packages=(
  [dig]="dnsutils"
  [hping3]="hping3"
  [dnschef]="dnschef"
  [iodine]="iodine"
  [dnscat]="dnscat2"
  [openssl]="openssl"
)

# Update APT index
sudo apt update

# Loop through tools and install if missing
for tool in "${!packages[@]}"; do
  if ! command -v $tool &> /dev/null; then
    echo "📦 Installing ${tool} (${packages[$tool]})..."
    sudo apt install -y "${packages[$tool]}"
  else
    echo "✅ $tool already installed."
  fi
done

echo "✅ All dependencies are installed!"

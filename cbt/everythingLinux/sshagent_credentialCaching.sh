# Generate ssh key
ssh-keygen
# will prompt for location, then ask for passphrase (optional)
# Add passphrase will encrypt public key

# Copy to remote device
ssh-copy-id admin@repo

# Try to ssh into remote
ssh admin@repo
# will require passphrase if used EVERY TIME logging in

# Will keep passphrase in memory (for terminal/session) if:
ssh-agent bash
ssh-add .ssh/id_rsa # <- can omit location if default
# prompts for passphrase (once)

# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
  iterm2
)

brew cask install "${apps[@]}"

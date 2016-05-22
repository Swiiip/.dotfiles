# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
  vlc
  iterm2
)

brew cask install "${apps[@]}"

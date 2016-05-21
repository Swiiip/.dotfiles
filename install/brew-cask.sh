# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
  google-chrome
  vlc
  iterm2
)

brew cask install "${apps[@]}"

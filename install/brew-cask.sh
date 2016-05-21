# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
  google-chrome
  sublime-text3
  vlc
  iterm2
)

brew cask install "${apps[@]}"

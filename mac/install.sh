check=`brew --version`
if [ $? -eq 127 ]; then
  echo "Install Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew found. Proceed to install packages"
fi

echo "Install Packages"
PKGS="node imagemagick zsh zsh-completions "

for pkg in $PKGS
do
   brew install $pkg
done

#brew install node
#brew install
CASKS="google-chrome alfred atom 1password slack java viber dropbox itsycal bartender iterm2 xquartz skype"
echo "Install Applications"
for csk in $CASKS
do
   brew cask install $csk
done

echo "Some other suggestions:\n"
echo "* Dr. Cleaner: https://itunes.apple.com/us/app/dr-cleaner-disk-memory-system-optimizer/id921458519?mt=12"

echo "Please install zsh prezto from: https://github.com/sorin-ionescu/prezto"

echo "Set some useful git aliases"
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status

#echo "Install Zsh Prezto"
#git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

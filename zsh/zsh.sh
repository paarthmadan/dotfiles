SCRIPTPATH=$(dirname "$SCRIPT")

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `zsh.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git -C ~/.oh-my-zsh/custom/plugins clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git -C ~/.oh-my-zsh/custom/plugins clone https://github.com/zsh-users/zsh-autosuggestions
git -C ~/.oh-my-zsh/custom/themes clone https://github.com/bhilburn/powerlevel9k.git

cp $SCRIPTPATH/zsh/"Source Code Pro for Powerline.otf" ~/Library/Fonts
cp $SCRIPTPATH/zsh/"com.googlecode.iterm2.plist" ~/Library/Preferences/com.googlecode.iterm2.plist

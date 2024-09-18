SCRIPTPATH=$(dirname "$0")

echo "[INFO] Script path determined as: $SCRIPTPATH"

# Ask for the administrator password upfront
echo "[INFO] Requesting sudo access"
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
echo "[INFO] Initializing sudo keep-alive"
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "[INFO] Oh My Zsh not found. Starting installation."
  zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo "[INFO] Cloning zsh-syntax-highlighting"
  git -C "$HOME/.oh-my-zsh/custom/plugins" clone https://github.com/zsh-users/zsh-syntax-highlighting.git

  echo "[INFO] Cloning zsh-autosuggestions"
  git -C "$HOME/.oh-my-zsh/custom/plugins" clone https://github.com/zsh-users/zsh-autosuggestions.git

  echo "[INFO] Installation completed."
else
  echo "[INFO] Oh My Zsh is already installed."
fi

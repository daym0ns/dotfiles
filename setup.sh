#!/usr/bin/env bash
set -e

needed=(
	git
	gcc
	zsh
	stow
	oh-my-posh
)

recommended=(
	rg
	fd
	fzf
  npm
	eza
	curl
	tmux
	nvim
  emacs
	zoxide
  lazygit
)

ensure() {
	local missing=()

	for cmd in "$@"; do
		if ! command -v "$cmd" >/dev/null 2>&1; then
			missing+=("$cmd")
		fi
	done

	if (( ${#missing[@]} )); then
		echo "Error: missing required programs:"
		for cmd in "${missing[@]}"; do
			echo "  - $cmd"
		done
		exit 1
	fi
}

warn() {
	local missing=()

	for cmd in "$@"; do
		if ! command -v "$cmd" >/dev/null 2>&1; then
			missing+=("$cmd")
		fi
	done

	if (( ${#missing[@]} )); then
		echo "Warn: missing recommended programs:"
		for cmd in "${missing[@]}"; do
			echo "  - $cmd"
		done
		echo ""
		read -r -p "You are missing programs that make the workflow incomplete. You will miss out on many things and experience some errors. You will probaby need to tweak some of the configurations to get them to a working state. Would you like to continue? (y/N): " answer
		if [[ "$answer" == "y" || "$answer" == "Y" || "$answer" == "yes" || "$answer" == "YES" ]]; then
			echo "Continuing installation"
		else
			exit 1
		fi
	fi
}

ensure "${needed[@]}"
warn "${recommended[@]}"

# Stow the dotfiles
stow .
echo "Dotfiles stowed"

# Setup zsh to source ~/.config/zsh
if [ -f ~/.zshrc ]; then
  rm -r ~/.zshrc
fi

echo "source ~/.config/zsh/zshrc" > ~/.zshenv
echo "Zsh config set up done"

# Setup tpm
if [ -d ~/.tmux ]; then
  rm -rf ~/.tmux
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/scripts/install_plugins.sh
echo "TPM setup done"

echo "Installation finished. Remember to 'brew install font-jetbrains-mono-nerd-font'!"

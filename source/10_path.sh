paths=(
  ~/.local/bin
  $DOTFILES/bin
  ~/go/bin
)

export PATH
for p in "${paths[@]}"; do
    if [ -n "$ZSH_VERSION" ]; then
        # just add; duplicates being removed in zshrc
        PATH="$PATH:$p"
    elif [ -n "$BASH_VERSION" ]; then
        #[[ -d "$p" ]] && PATH="$p:$(path_remove/$p/ "$p")"
        PATH="${PATH/p/}:$p"
    else
        PATH="$PATH:$p"
    fi
    done
unset p paths


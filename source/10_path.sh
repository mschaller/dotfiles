paths=(
  ~/.local/bin
  $DOTFILES/bin
  ~/go/bin
)

export PATH
for p in "${paths[@]}"; do
  [[ -d "$p" ]] && PATH="$p:$(path_remove "$p")"
done
unset p paths

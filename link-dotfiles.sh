#!/bin/sh

nothing_to_do="true"

for name in *; do
  target="$HOME/.$name"
  if [ ! -L "$target" ]; then
    case "$name" in
      install.sh)
        # Do nothing
        ;;
      link-dotfiles.sh)
        # Do nothing
        ;;
      *)
        nothing_to_do=false
        echo "Creating $target"
        ln -s "$PWD/$name" "$target"
        ;;
    esac
  fi
done

[ $nothing_to_do == "true" ] && echo "Nothing to do."

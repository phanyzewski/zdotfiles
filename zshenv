# Vim only sources zshenv (this file), not zshrc.

# Add the Homebrew path here so that Vim can find Homebrew's ctags.
PATH=/usr/local/bin:/usr/local/sbin:$PATH

eval "$(rbenv init -)"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export CLOUDSDK_PYTHON="/opt/homebrew/bin/python3.8"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"

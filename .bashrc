[ -n "$PS1" ] && source ~/.bash_profile;

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/opt/homebrew/bin:/usr/local/bin::$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Applications/Emacs.app/Contents/MacOS:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"

# You can use yarn workspace to run commands in the context of a package without having to leave the root
# I put short function in my zshrc to make that easier to type
function w {
  yarn workspace @org/$@
};
# w api test:unit

function yt () {
 find -E src libs apps -regex .*/$1.test.[jt]sx? | xargs time yarn test
}

function yyarn {
  yarn && yarn $@
}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(zoxide init --cmd cd bash)"


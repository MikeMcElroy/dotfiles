[ -n "$PS1" ] && source ~/.bash_profile;

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# You can use yarn workspace to run commands in the context of a package without having to leave the root
# I put short function in my zshrc to make that easier to type
function w {
  yarn workspace @org/$@
};
# w api test:unit

function yyarn {
  yarn && yarn $@
}

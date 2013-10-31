DDev() { cd ~/Dropbox/Development/$1; }
_DDev() { _files -W ~/Dropbox/Development -/; }
compdef _DDev DDev

__git_files () { _wanted files expl 'local files' _files }

function rbenv_check() {
  global=`rbenv global`
  current=`rbenv version-name`
  if [[ "$global" != "$current" ]]; then
    echo " $current"
  fi
}

# I ♥ my bash prompt
PS1='\[\e[0;31m♥ \e[0;91m\]\W \[\e[0;35m\]❯\[\e[0m\] '

alias o="xdg-open"
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection clipboard -o"
alias xclip="xclip -selection c"
alias cb="xclip -selection c"
alias lumo="lumo -e \"(require '[lumo.io :refer [slurp spit]])\" -r"

e () { emacs "$@" & disown; }

# Create a new directory and enter it
function md() {
    mkdir -p "$@" && cd "$@"
}


# find shorthand
function f() {
    find . -name "$1"
}

# Extract archives - use: extract <file>
# Credits to http://dotfiles.org/~pseup/.bashrc
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) rar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) tar xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *) echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function ghclone() {
    cd ~/dl/git
    git clone git@github.com:$1.git
}

# http://lifehacker.com/5592047/turn-your-command-line-into-a-fast-and-simple-note+taking-tool
NOTES_DIR=$HOME/Dropbox/notes
nn () {
    [ ! -d $NOTES_DIR ] && mkdir -p $NOTES_DIR
    ${EDITOR:-vi} $NOTES_DIR/"$*"
}
nls() {
    ls -c ~/notes/ | grep "$*"
}

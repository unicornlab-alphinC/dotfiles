
remove_non_dirlink() {
    if [[ ! (-L $1 && -d $1) && -d $1 || -f $1 ]]; then
        echo "${1} exists, do you want to overwrite it with a symlink?"
        rm -rI $1
    fi
}

DIR="$(dirname "$(readlink -f "$0")")"
cd $DIR


mkdir -p $HOME/.config

# nvim
remove_non_dirlink $HOME/.config/nvim
ln -sfn $DIR/nvim $HOME/.config

# i3
remove_non_dirlink $HOME/.config/i3
ln -sfn $DIR/i3 $HOME/.config

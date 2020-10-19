# ohmyzsh-custom

These are my custom set of plugins and themes(prompts) that I use with zsh.

## Setup

Symlink the contents of the `./plugins` and `./themes` folder to 
`.config/oh-my-zsh/custom/plugins` and `.config/oh-my-zsh/custom/themes` folders respectively.
Also symlink `.zsh_aliases` to `.config/oh-my-zsh/custom`

You can do this automatically by executing:
```sh
./setup
```

Or manually by doing the following for each plugin and theme as well as the alias file:
```sh
SRC_DIR="$HOME/.config/oh-my-zsh-custom"
DEST_DIR="$ZSH/custom"

ln -rs $SRC_DIR/.zsh_aliases $DEST_DIR/.zsh_aliases
ln -rs $SRC_DIR/plugins/<plugin_dir> $DEST_DIR/plugins/<plugin_dir>
ln -rs $SRC_DIR/themes/<theme_dir> $DEST_DIR/themes/<theme_dir>
```


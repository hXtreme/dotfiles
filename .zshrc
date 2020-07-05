#! /bin/zsh

## Import .shrc
source $HOME/.config/sh/.shrc

## ZSH Configuration variables.
export ZSH_CONFIG_PATH="$HOME/.config/zsh"
export ZSH_PLUGIN="$ZSH_CONFIG_PATH/plugin"

## Options section
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

## ZSH history configuration
setopt appendhistory                                            # Append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt incappendhistory                                         # incremenally append the history, don't wait to batch it
HISTFILE="$HOME/.cache/.zsh_history"
HISTSIZE=3000
SAVEHIST=3000
HISTDUP=erase

## ZSH Prompt
setopt promptsubst
source "$ZSH_CONFIG_PATH/theme/agnoster.zsh-theme"

# Keybindings section
# bindkey -e
# bindkey -v
# bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
# if [[ "${terminfo[khome]}" != "" ]]; then
#   bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
# fi
# bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                     # End key
# if [[ "${terminfo[kend]}" != "" ]]; then
#   bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
# fi
# bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key
# 
# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
# bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
# bindkey '^[[Z' undo                                             # Shift+tab undo last action

## My scripts
# TODO: Add my scripts here.

## ZSH Plugins
### Zsh Completions
autoload -Uz compinit
fpath=("$ZSH_PLUGIN/zsh-completions/src" $fpath)
source "$ZSH_PLUGIN/zsh-completions/zsh-completions.plugin.zsh"

### Autosuggestions
source "$ZSH_PLUGIN/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

### Syntax highlighting
source "$ZSH_PLUGIN/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#586e75'

### Colorize cat/less
# Usage: ccat [FILE]
# Usage: cless [FILE]
source "$ZSH_PLUGIN/colorize/colorize.plugin.zsh"

### Thefuck
# Correct you previous command.
# Usage: <ESC> <ESC>
source "$ZSH_PLUGIN/thefuck/thefuck.plugin.zsh"

### Interactive cd
source "$ZSH_PLUGIN/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh"

## Alias section 
source "$ZSH_CONFIG_PATH/.zsh_aliases"
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB

# Right prompt with exit status of previous command marked with ✓ or ✗
 #RPROMPT="%(?.%{$fg[green]%}✓ %{$reset_color%}.%{$fg[red]%}✗ %{$reset_color%})"

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

compinit							# Initialize the auto-completion system


source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle colored-man-pages

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-history-substring-search
#antigen bundle zsh-users/zsh-autosuggestions investigate that one, it looks cool

# Tell Antigen that you're done.
antigen apply

#conf for history substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down



#####THEME IMPORTED FROM PREVIOUS ZSHRC

# set some colors
for COLOR in RED GREEN YELLOW WHITE BLACK CYAN BLUE PURPLE; do
    eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'         
    eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done                                                 
PR_RESET="%{${reset_color}%}";                       

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git cvs svn
# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stangedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
## check-for-changes can be really slow.
## you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true            # slower, but lets us show changes to working/index
zstyle ':vcs_info:*:prompt:*' unstagedstr "${PR_BRIGHT_YELLOW}*${PR_RESET}"             # unstaged changes string: red *
zstyle ':vcs_info:*:prompt:*' stagedstr "${PR_BRIGHT_YELLOW}+${PR_RESET}"            # staged changes string: yellow +
zstyle ':vcs_info:*:prompt:*' formats  " ${PR_GREEN}%s${PR_RESET}:${PR_BRIGHT_RED}(%b${PR_RESET}%c%u${PR_BRIGHT_RED})${PR_RESET}"              "%a"
zstyle ':vcs_info:*:prompt:*' actionformats  " ${PR_GREEN}%s${PR_RESET}:${PR_BRIGHT_RED}(%b|%a)${PR_RESET}"              "%a"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             "%~"
zstyle ':vcs_info:*:prompt:*' branchformat  "%b:%r"              ""

precmd(){
    vcs_info 'prompt'
}

PROMPT='
%{$fg_bold[grey]%}[%*] [%{$reset_color%}%{$fg[green]%}%n%{$reset_color%}%{$fg_bold[grey]%}]:%{$reset_color%}%{$fg_bold[yellow]%}%10c%{$reset_color%} ${vcs_info_msg_0_} $(git_remote_status)
%B%F{black}▶%f%b%F{red}▶%B%F{red}▶%f%b '

local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"
#RPROMPT='[%*]${return_status}%{$reset_color%}'
RPROMPT='==========================
'


# ~/.zshrc

eval "$(starship init zsh)"

export PATH="$HOME/.local/bin":$PATH
export ZSH=$HOME/.oh-my-zsh
# export PATH="/opt/homebrew/anaconda3/bin:$PATH"  # commented out by conda initialize

# source ~/.oh-my-zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

plugins=( 
    git
    zsh-autosuggestions
    zsh-completions
)

function runcpp() {
    local cpp_file="${1:-}"
    local cpp_version="${2:-17}"
    local run="${3:-y}"

    if [[ -z $cpp_file ]]; then
        echo "Please provide the name of the CPP file."
        return 1
    fi

    g++ -std=c++${cpp_version} "${cpp_file}.cpp" -o "${cpp_file}"

    if [[ $run == "y" ]]; then
        ./"${cpp_file}"
    fi
}

function runc(){
    local c_file="${1:-}"
    local run="${2:-y}"
    
    if [[ -z $c_file ]]; then
        echo "Please provide the name of the C file."
        return 1
    fi

    gcc "${c_file}.c" -o "${c_file}"

    if [[ $run == "y" ]]; then
        ./"${c_file}"
    fi
}

function mdtm(){
    local md_file="${1:-}"
    local file_name="${2:-}"
    
    if [[ -z $md_file ]]; then
        echo "Please provide the name of the markdown file"
        return 1
    fi

    if [[ -z $file_name ]]; then
        file_name=$md_file
    fi

    pandoc "${md_file}.md" -f markdown -o "${file_name}.pdf" --filter=mermaid-filter
}

alias cloud="cd ~/Library/CloudStorage/OneDrive-UniversityofIndianapolis/"
# alias vim="nvim"

# Windows Config
# alias nvim="~/nvim-linux64/bin/nvim"
# alias cloud="cd ~/../../mnt/c/Users/jonat/OneDrive\ -\ University\ of\ Indianapolis/"
# alias nvim_config="nvim ~/.config/nvim/lua/user"

source /Users/jgonz/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/Users/jgonz/.bun/_bun" ] && source "/Users/jgonz/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# opam configuration
[[ ! -r /Users/jgonz/.opam/opam-init/init.zsh ]] || source /Users/jgonz/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

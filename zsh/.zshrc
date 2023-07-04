# ~/.zshrc

eval "$(starship init zsh)"

export PATH="$HOME/.local/bin":$PATH

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

plugins=( 
    git
    zsh-autosuggestions
)

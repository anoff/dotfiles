# Got this from Jamis: https://gist.githubusercontent.com/jamischarles/752ad319df780122c772168ad0bbc67e/raw/aa4f14368ff4cbcc6f3f219167deac9b0c939ef1/.npm_install_autocomplete.bashrc
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#
# for BASH
if type complete &>/dev/null; then
    _npm_completion () {
        local words cword
        if type _get_comp_words_by_ref &>/dev/null; then
            _get_comp_words_by_ref -n = -n @ -w words -i cword
        else
            cword="$COMP_CWORD"
            words=("${COMP_WORDS[@]}")
        fi

        local si="$IFS"


        # if your npm command includes `install` or `i `
        if [[ ${words[@]} =~ 'install' ]] || [[ ${words[@]} =~ 'i ' ]]; then
            local cur=${COMP_WORDS[COMP_CWORD]}

            # supply autocomplete words from `~/.npm`, with $cur being value of current expansion like 'expre'
            COMPREPLY=( $( compgen -W "$(ls ~/.npm )" -- $cur ) )
        else
            IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                COMP_LINE="$COMP_LINE" \
                COMP_POINT="$COMP_POINT" \
                npm completion -- "${words[@]}" \
                2>/dev/null)) || return $?
        fi

        IFS="$si"
    }
    complete -o default -F _npm_completion npm
# for ZSH
elif type compdef &>/dev/null; then
    _npm_completion() {
        local si=$IFS


        # if your npm command includes `install`
        if [[ ${words} =~ 'install' ]] || [[ ${words} =~ 'i ' ]]; then
            compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                COMP_LINE=$BUFFER \
                COMP_POINT=0 \
                ls ~/.npm -- "${words[@]}" \
                2>/dev/null)

        else
            compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                COMP_LINE=$BUFFER \
                COMP_POINT=0 \
                npm completion -- "${words[@]}" \
                2>/dev/null)
        fi

        IFS=$si
    }
    compdef _npm_completion npm
elif type compctl &>/dev/null; then

    _npm_completion () {
        local cword line point words si
        read -Ac words
        read -cn cword
        let cword-=1
        read -l line
        read -ln point
        si="$IFS"
        IFS=$'\n' reply=($(COMP_CWORD="$cword" \
            COMP_LINE="$line" \
            COMP_POINT="$point" \
            npm completion -- "${words[@]}" \
            2>/dev/null)) || return $?
        IFS="$si"
    }
    compctl -K _npm_completion npm
fi
###-end-npm-completion-###

set -gx PATH $PATH ~/.emacs.d/bin/ ~/.npm/bin/ ~/.local/bin ~/.cargo/bin/ ~/.gem/ruby/2.6.0/bin
set -gx XDG_DATA_DIRS /usr/local/share:/usr/share
set -gx EDITOR /usr/bin/vim
set -gx BROWSER "/usr/bin/qutebrowser %s"

set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

set -U dangerous_nogreeting
set dangerous_colors night

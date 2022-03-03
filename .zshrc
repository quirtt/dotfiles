export ZSH="/home/quirtt/.oh-my-zsh"
eval $(starship init zsh)
plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
alias dotfiles='git --git-dir=/home/quirtt/dotfiles/ --work-tree=/home/quirtt'
### HERE ###
export PATH="$HOME/.poetry/bin:$PATH"

PATH="/home/quirtt/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/quirtt/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/quirtt/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/quirtt/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/quirtt/perl5"; export PERL_MM_OPT;
export PATH="$PATH:/home/quirtt/.local/bin/"

##OTIS
probmgr(){ bash $HOME/Projects/probmgr/latextmp.sh $1 $2 }
export OTIS="$HOME/Documents/OTIS"
open(){ evince $OTIS/texfiles/$1/$1.pdf &| }
run(){ latexmk -pdf -pvc -f -interaction=nonstopmode $1 1>/dev/null }
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
wifi(){ bash $HOME/.scripts/wifi.sh $1 $2 }

# ____        _   _                   _________  _   _ ____   ____ 
#| __ ) _   _| |_| |_ __ _ _ __ ___  |__  / ___|| | | |  _ \ / ___|
#|  _ \| | | | __| __/ _` | '__/ __|   / /\___ \| |_| | |_) | |    
#| |_) | |_| | |_| || (_| | |  \__ \  / /_ ___) |  _  |  _ <| |___ 
#|____/ \__,_|\__|\__\__,_|_|  |___/ /____|____/|_| |_|_| \_\\____|

# All of our zsh files
export ZSH=/home/buttars/.oh-my-zsh
ZSH=/usr/share/oh-my-zsh/

typeset -U config_files
config_files=(~/.zsh/*.zsh)

# Load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# Load the prompt file
for file in ${(M)config_files:#*/prompt.zsh}
do
  source $file
done

# Load everything but the path, prompt, and completion files
for file in ${${${config_files:#*/path.zsh}:#*/completion.zsh}:#*/prompt.zsh}
do
  source $file
done

unset config_files

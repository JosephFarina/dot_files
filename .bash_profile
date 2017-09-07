PATH=$PATH:~/scripts

export ANDROID_HOME='/Users/joey/Library/Android/sdk'
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH


alias q='QHOME=~/q rlwrap -r ~/q/m32/q'
alias g='git'
alias c='clear'
alias r="rails"
alias n="node"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

function run_after_save {
    prefix=$1
    file=$2
    line=$3
    if [ -z "$line" ]; then
        nodemon -x "$prefix $file" -w "$file"
    else
        nodemon -x "$prefix $file:$line" -w "$file"
    fi
}

alias wsr='run_after_save "bundle exec spring rspec"'
alias wr='run_after_save "bundle exec rspec"'

 
. ~/.bashrc


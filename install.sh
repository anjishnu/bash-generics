# Install by copying shell files to home directory

echo 'installing...'

CUR_DIR=`pwd`
cp $CUR_DIR/.?* ~/

COPYRIGHT='\n## Installed by bash generics-script - copyright Anjishnu Kumar ##\n'
STRING='source ~/.generic.sh'

if [ -z "$BASH_GENERIC" ] ; then
    echo 'Not already installed'
else
    echo 'Already installed'
    exit 1
fi

if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
   # assume Zsh
    DOTRC='.zshrc'

elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]; then
   # assume Bash
    DOTRC='.bashrc'
fi

echo 'Detected '$DOTRC

# Installing...

echo -e $COPYRIGHT >> ~/$DOTRC
echo -e '\nexport BASH_GENERIC=0.1\n' >> ~/$DOTRC
echo $STRING >> ~/$DOTRC
echo -e $COPYRIGHT >> ~/$DOTRC


echo 'Finished installation of bash-generics'
source ~/$DOTRC

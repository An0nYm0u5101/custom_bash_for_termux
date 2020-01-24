#For a customized bash, paste the whole in to your usr/etc/bash.bashrc

if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

#This is for the custom shell prompt. Thought this was cool...so yeah
#N.B. The PS1 prompt might be a bit buggy, but its manageable, also its cool!

PS1='\e[2;36m┌──<<|[\w]|\n└─╼>>\e[m '

#These are some custom aliases, perhaps may come handy

#Incase you type in sl instead of ls (which happens a lot)
#If you have sl installed (which displays a steam train)
#you can uncomment sl
alias sl="ls --color"

#Ensures that all the outputs of ls are displayed in colors
#even if you run ls | grep $1
alias ls="ls --color"

#You know the drill
alias cls="clear"

#Typing in .. makes it rather a lot easier than typing in
# cd ../
alias ..="cd .."

#The same goes with this one, drops back 2 directories from the working directory
alias ...="cd ../.."

#Includes colorized ls output with special characters for ease
alias ls="ls --color -F"

#For cleaning up the history for the current shell
alias hist="history -c"

#Migrating to /com.termux/files/usr/etc directory with `yoetc`
alias yoetc="cd $HOME; cd ..; cd usr/etc/"

#Migrate to /com.termux/files/usr/bin
alias yobin="cd $HOME; cd ..; cd usr/bin/"

#Migrate to /com.termux/files/usr/var
alias yovar="cd $HOME; cd ..; cd usr/var"

#Migrate to cpp includes
alias yoinclude="cd $HOME; cd ..; cd usr/include/"

#To the libraries folder in termux app
alias yo-lib="cd $HOME; cd ..; cd usr/lib/"

#To share
alias yoshare="cd $HOME; cd ..; cd usr/share"

#And to usr
alias yousr="cd $HOME; cd ..; cd usr/"

#AAnd to libexecutables
alias yolibx="cd $HOME; cd ..; cd usr/libexec/"

#Here we define a variable $tobin which directs to binaries folder
#Trust mem it really helps
tobin="/data/data/com.termux/files/usr/bin"

#The grep output returns in color
alias grep="grep --color"

#Perhaps a bit of solarized theme for the termux? More info at
#https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
#Reading the article before tweaking might help, if you're new to dircolors c:

#the 'di' stands for directory color, 'ex' for executable files
#'ln' for linked ones and 'no' for the rest of the file names. 
#Also note here that, only the changes in directories, executables and linked files are changed here, there
#are loads of file types you can change c:

LS_COLORS=$LS_COLORS:'di=01;02;36:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'ex=01;02;32:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'ln=34:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'no=01;90:';
export LS_COLORS

#Hope this shit minimizes some time and introduces a new flavor to your bash shell c:
#Tweak these to your taste c:
#Godspeed!

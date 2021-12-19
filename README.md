# BASH and VIM set up

This is an howto for setting up terminal and vim on the cluster.
Make sure to be logged on the cluster using 2 istances. If you mess up .bashrc and logout you will not be able to log in again.

General Set up:



- Install [Bioconda](https://github.com/ohmybash/oh-my-bash).
- Install [mamba](https://github.com/mamba-org/mamba).
- Install `zsh`: `mamba install zsh`.
- Install [oh-my-zsh](https://ohmyz.sh/).

Install oh-my-zsh plugins:
- Install [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh).
- Install [Shell Integration](https://iterm2.com/documentation-shell-integration.html) and make sure that the hostname in `.bash_profile` is correct.
- Install [autojump](https://github.com/c1au6i0/autojump).
- Install [k](https://github.com/supercrabtree/k)
- Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md).


- Copy `.bashrc`, `.zshrc` and `.vimrc` to home directory.
- Copy `mybin` in the home.
- Install `neovim` using `mamba`.
- Install [vim-plug](https://github.com/junegunn/vim-plug).
Start `vim` and `:PlugUpdate!` to install plugins.
Check also on how to import plug_snapshot.lock
## Other

In projects where you are using `{renv}` install `nvimcom` using
`devtools::install("~/.vim/plugged/Nvim-R/R/nvimcom")`

In your .ssh/config in your local machine add this 
```
XAuthLocation /opt/X11/bin/xauth # or location to X11
ForwardX11 yes
ForwardX11Trusted yes
```



# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# BEGIN ANSIBLE MANAGED BLOCK
# if scu compute, load spack package manager
if [[ $(hostname) == *"scu-node"* || $(hostname) == *"scu-vis"* ]] ; then
  if [ -f /software/spack/share/spack/setup-env.sh ] ; then
    . /software/spack/share/spack/setup-env.sh
  fi
fi
# END ANSIBLE MANAGED BLOCK

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/clz4002/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/clz4002/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/clz4002/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/clz4002/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Starts zsh
if [ "$SSH_TTY" ]
then
  exec /home/clz4002/miniconda3/bin/zsh
fi



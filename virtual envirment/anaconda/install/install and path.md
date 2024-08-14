# Conda 설치 및 초기 설정

## Conda 설치


## Conda 경로 설정




/etc/bash.bashrc/

nano bash.bashrc

``` bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```
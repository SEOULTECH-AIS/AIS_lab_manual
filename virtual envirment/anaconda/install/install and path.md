# Conda 설치 및 초기 설정

## Conda 설치

## Conda 경로 설정

conda 설치 후 해당 기능 사용을 위하여, 해당 소프트웨어의 path 설정이 필요.  
이때 해당 설정은 bash가 실행 될 때마다 설정이 필요함.  
따라서 상황에 맞추어 아래 명령어에서 선택하여, 내용을 삽입 할 필요가 있음.  

``` bash
nano /etc/bash.bashrc/  # 단말기 내 사용자 전체 설정이 필요한 경우 (ex 서버)
nano ~/.bashrc/  # 특정 사용자만 적용하는 경우 (ex 개인 연구 컴퓨터)
```

해당 내용을 설정하려는 상황에 맞추어 bash 초기 실행 사항에 삽입.

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

## 설치 확인

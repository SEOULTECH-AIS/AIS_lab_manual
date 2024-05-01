# Anaconda 환경 관리

[이전](.) >> [목차](./README.md) >> [이후](.)

## 가상환경 환경변수 관리

가상환경에서 사용하고자 하는 환경 변수를 미리 설정하여, 가상환경에 따라 자동으로 처리하는 기능을 제공함. <br/>
이때 명령어에 따라 실행되는 스크립트 파일 위치는 다음과 같음.<br/>

- `conda activate` : `$CONDA_PREFIX`/etc/conda/activate.d
- `conda deactivate` : `$CONDA_PREFIX`/etc/conda/deactivate.d

## 예시

Linux 시스템에 구성된 가상환경 `learning_base`에서 사용하려는 cuda의 경로를 환경변수 PATH에 추가하는 자동화 스크립트를 사용하는 상황.<br/>
아래의 `set_cuda_path.sh`, `unset_cuda_path.sh`를 이용하여 cuda의 경로를 환경변수에 설정하고, 해제하고자 함.

### 스크립트 파일 작성
```bash
conda activate learning_base
cd $CONDA_PREFIX  # 가상환경 디렉토리 접근
mkdir -p ./etc/conda/activate.d
mkdir -p ./etc/conda/deactivate.d
touch ./etc/conda/activate.d/set_cuda_path.sh
touch ./etc/conda/deactivate.d/unset_cuda_path.sh
```

### set_cuda_path.sh
```bash
# !/bin/bash
OLD_PATH=$PATH
PATH="/usr/local/cuda-11.7/bin:$PATH"  # CUDA 11.7

if [ "$LD_LIBRARY_PATH" != "" ]
then
    OLD_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
    LD_LIBRARY_PATH="/usr/local/cuda-11.7/lib64:$LD_LIBRARY_PATH"
fi
```

### unset_cuda_path.sh
```bash
# !/bin/bash
PATH=$OLD_PATH
unset OLD_PATH

if [ "$OLD_LD_LIBRARY_PATH" != "" ]
then
    LD_LIBRARY_PATH=$OLD_LD_LIBRARY_PATH
    unset OLD_LD_LIBRARY_PATH
else
    unset LD_LIBRARY_PATH
    unset OLD_LD_LIBRARY_PATH
fi
```

### 적용 결과
![결과_이미지](./img_source/saving_environment%20variable_000.png)

# Anaconda 환경 관리

[이전](.) >> [목차](./README.md) >> [이후](.)

## 가상환경 환경변수 관리

가상환경에서 사용하고자 하는 환경 변수를 미리 설정하여, conda 명령어에 동기화되어 자동으로 처리하는 기능을 제공함. <br/>
이때 명령어에 따라 실행되는 스크립트 파일 위치는 다음과 같음.<br/>

- `conda activate` : `$CONDA_PREFIX`/etc/conda/activate.d
- `conda deactivate` : `$CONDA_PREFIX`/etc/conda/deactivate.d

## 예시

Linux 시스템에 구성된 가상환경 `learning_base`에서 사용하려는 cuda의 경로를 환경변수 PATH에 추가하는 자동화 스크립트를 사용하는 상황.<br/>
[`set_cuda_path.sh`](./script/set_cuda_path.sh), [`unset_cuda_path.sh`](./script/unset_cuda_path.sh)를 이용하여 cuda의 경로를 환경변수에 설정하고, 해제하고자 함.

### 스크립트 파일 작성
```bash
conda activate learning_base
mkdir -p $CONDA_PREFIX/etc/conda/activate.d  # $CONDA_PREFIX = 가상환경 디렉토리
mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d

cd ./script
cp set_cuda_path.sh $CONDA_PREFIX/etc/conda/activate.d/set_cuda_path.sh
cp unset_cuda_path.sh $CONDA_PREFIX/etc/conda/deactivate.d/unset_cuda_path.sh
```

### 적용 결과
![결과_이미지](./img_source/saving_environment%20variable_000.png)

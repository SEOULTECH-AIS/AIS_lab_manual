# Anaconda 기초 명령어 - create

가상환경 생성을 위한 명령어.

| 옵션 | 기능 |
| :---: | :---: |
| -n | 가상환경 이름|
| -p | 지정한 경로로 가상환경이 위치함<br> (가상환경 기본 경로 ```$codna_path/env/$env_name```)|

## 예시

### 단순 환경 생성

```bash
conda create -n $env_name 
```

### 별도의 참조를 사용한 환경 생성

```bash
conda create
```
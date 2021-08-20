# Docker Ubuntu GPU CUDA OpenCV

## Compile
First, check your GPU CUDA compute capability at [this address](https://en.wikipedia.org/wiki/CUDA#GPUs_supported) and 
report the CUDA_ARCH_BIN version within [Dockerfile.gpu](/Dockerfile.gpu)
```bash
docker build -t ubuntu_gpu_cuda_opencv:latest -f Dockerfile.gpu .
```
The docker image will take a while to compile 
due to OpenCV GPU-ready project building. 
The building arguments details can be found [here](https://github.com/opencv/opencv/blob/master/CMakeLists.txt)

## Push
- First, tag the compiled image
```bash
docker tag ubuntu_gpu_cuda_opencv:latest paulasquin/ubuntu_gpu_cuda_opencv:latest
```

- Login
```bash
docker login
```

- Then push
```bash
docker push paulasquin/ubuntu_gpu_cuda_opencv:latest
```

## Mediapipe image
If you want to compile the mediapipe ready container:
- Build with ubuntu_gpu_cuda_opencv:latest
```bash
docker build -t ubuntu_gpu_cuda_opencv:latest-mediapipe -f Dockerfile-mediapipe.gpu .
```
- Tag to 
```bash
docker tag ubuntu_gpu_cuda_opencv:latest-mediapipe paulasquin/ubuntu_gpu_cuda_opencv:latest-mediapipe
```
- Then push
- Then push
```bash
docker push paulasquin/ubuntu_gpu_cuda_opencv:latest-mediapipe
```

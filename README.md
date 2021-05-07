# Docker Ubuntu GPU CUDA OpenCV

## Compile
```bash
sudo docker build -t ubuntu_gpu_cuda_opencv:latest -f Dockerfile.gpu .
```
The docker image will take a will to compile 
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

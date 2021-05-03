# Docker Ubuntu GPU CUDA OpenCV

## Compile
```bash
sudo docker build -t ubuntu_gpu_cuda_opencv:latest -f Dockerfile.gpu .
```


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

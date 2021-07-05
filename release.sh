echo Please enter organisation, for instance kolibree
read ORGANISATION

echo Please enter version number, for instance 0.0.2
read VERSION

# Building
echo Start building images for version ${VERSION}...
docker build -t ubuntu_gpu_cuda_opencv:latest -f Dockerfile.gpu .
echo Base image building done, starting mediapipe one...
docker build -t ubuntu_gpu_cuda_opencv:latest-mediapipe -f Dockerfile-mediapipe.gpu .
echo Building done.

# Auth
echo Starting docker auth
docker login

# Tag
echo Tagging all versions
docker tag ubuntu_gpu_cuda_opencv:latest ${ORGANISATION}/ubuntu_gpu_cuda_opencv:latest
docker tag ubuntu_gpu_cuda_opencv:latest ${ORGANISATION}/ubuntu_gpu_cuda_opencv:${VERSION}

docker tag ubuntu_gpu_cuda_opencv:latest-mediapipe ${ORGANISATION}/ubuntu_gpu_cuda_opencv:latest-mediapipe
docker tag ubuntu_gpu_cuda_opencv:latest-mediapipe ${ORGANISATION}/ubuntu_gpu_cuda_opencv:${VERSION}-mediapipe

# Push
echo Pushing
docker push ${ORGANISATION}/ubuntu_gpu_cuda_opencv:latest
docker push ${ORGANISATION}/ubuntu_gpu_cuda_opencv:${VERSION}

docker push ${ORGANISATION}/ubuntu_gpu_cuda_opencv:latest-mediapipe
docker push ${ORGANISATION}/ubuntu_gpu_cuda_opencv:${VERSION}-mediapipe

echo All done!


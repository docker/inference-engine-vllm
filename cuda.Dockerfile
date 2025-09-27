ARG CUDA_VERSION=12.9.0
ARG CUDA_IMAGE_VARIANT=ubuntu24.04

FROM nvidia/cuda:${CUDA_VERSION}-devel-${CUDA_IMAGE_VARIANT}

COPY scripts/lib.sh lib.sh
COPY scripts/build-vllm.sh build-vllm.sh
RUN ./build-vllm.sh cuda


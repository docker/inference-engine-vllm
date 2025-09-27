FROM ubuntu:24.04

COPY scripts/lib.sh lib.sh
COPY scripts/build-vllm.sh build-vllm.sh
RUN ./build-vllm.sh cudga


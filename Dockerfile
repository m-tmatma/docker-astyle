FROM ubuntu:22.04

RUN apt update \
    && apt install -y make gcc g++ cmake git \
    && git clone https://gitlab.com/saalen/astyle.git \
    && cd astyle \
    && mkdir build \
    && cmake -S . -B build \
    && cmake --build build \
    && cmake --build build --target install \
    && rm -rf build \
    && apt remove -y make gcc g++ cmake git \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && astyle --version

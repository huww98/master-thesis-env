# syntax=docker/dockerfile:1

FROM ubuntu:22.04

RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt \
    rm /etc/apt/apt.conf.d/docker-clean && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        texlive-xetex texlive-lang-chinese texlive-science latexmk \
        python3 python3-pip
    
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install matplotlib

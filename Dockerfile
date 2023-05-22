FROM --platform=linux/x86_64 archlinux:latest

RUN pacman -Syu --noconfirm --needed \
           tar \
           python python-virtualenv python-pipx \
           gcc gmp \
           gcc-fortran \
           jdk-openjdk \
           gcc rust && \
    pipx install poetry && \
    pipx install yamk

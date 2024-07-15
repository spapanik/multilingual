FROM spapanik/fedora-python:1.1.0

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    git gcc gcc-fortran gmp gmp-devel python python-devel pipx java-latest-openjdk java-latest-openjdk-devel rustup && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}

ENV PATH="/home/${PYTHON_USER}/.local/bin:/home/${PYTHON_USER}/.cargo/bin:${PATH}"

RUN pipx install eulertools==5.0.0 && \
    rustup-init -y

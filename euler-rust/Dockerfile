FROM spapanik/euler-py:2.0.0

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    rustup && \
    rustup-init -y && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}

ENV PATH="/home/${PYTHON_USER}/.cargo/bin:${PATH}"

RUN rustup-init -y && \
    rustup default stable

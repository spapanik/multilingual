FROM spapanik/fedora-python:2.0.0

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    jq && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}

RUN pipx install eulertools==5.3.0 && \
    pipx install yq==3.4.3

FROM spapanik/euler-py:1.3.0-2

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    java-latest-openjdk java-latest-openjdk-devel && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}

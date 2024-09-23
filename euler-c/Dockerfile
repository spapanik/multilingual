FROM spapanik/euler-py:1.3.0-3

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    gmp gmp-devel && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}

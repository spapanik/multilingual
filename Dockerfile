FROM fedora:39

ENV PYTHON_USER=brian

RUN groupadd --gid 1000 ${PYTHON_USER} && \
    useradd --create-home --uid 1000 --gid 1000 --shell /bin/bash ${PYTHON_USER} && \
    echo "${PYTHON_USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    git gcc gcc-fortran gmp gmp-devel python python-devel pipx java-latest-openjdk java-latest-openjdk-devel rustup && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}
ENV PATH="/home/${PYTHON_USER}/.local/bin:/home/${PYTHON_USER}/.cargo/bin:${PATH}"
ENV PYTHONPYCACHEPREFIX="/home/${PYTHON_USER}/.cache/pycache/"

RUN pipx install yamk==6.1.0 && \
    pipx install poetry==1.8.2 && \
    pipx install eulertools==2.1.0 && \
    rustup-init -y

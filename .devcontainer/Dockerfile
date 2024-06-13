# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/codespaces-linux/.devcontainer/base.Dockerfile

#FROM mcr.microsoft.com/vscode/devcontainers/universal:2-focal
FROM ubuntu:20.04

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
RUN apt-get update && apt-get -y install --no-install-recommends


ARG USER="root"
ARG VENV_PATH="/panug/venv"
COPY requirements.txt /tmp/
COPY Makefile /tmp/
RUN su echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
    && su tee -a /etc/apt/sources.list.d/netdevops.list -y \
    && su apt install containerlab -y \
    && su apt-get install containerd -y \
    && su apt remove moby-tini -y \

RUN su $USER -c "/usr/bin/python3 -m venv /panug/venv" \
   && su $USER -c "${VENV_PATH}/bin/pip --disable-pip-version-check --no-cache-dir install -r /tmp/requirements.txt" \
   && rm -rf /tmp/requirements.txt
#ARG HOMEPATH="panug"

RUN su chmod +x codespaces.sh
RUN su ./codespaces.sh

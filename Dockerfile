FROM ubuntu:22.04
#
## [Optional] Uncomment this section to install additional OS packages.
## RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
##     && apt-get -y install --no-install-recommends <your-package-list-here>
#RUN apt-get update && apt-get -y install --no-install-recommends &&  apt-get install -y build-essential libssl-dev libffi-dev python3-dev
#
#SHELL ["/bin/bash"]
##ARG Below prevents installation question prompts
#ARG DEBIAN_FRONTEND=noninteractive
#ARG USER="telescope40"
#WORKDIR /panug
#ARG VENV_PATH="/panug/venv"
#COPY . /panug
#COPY Makefile /panug/.




FROM ubuntu:20.04


##ARG Below prevents installation question prompts
ARG DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y
    # Your packages here

# Copy application files
COPY . /panug

# Set the working directory
WORKDIR /panug

# Optional: Specify a default command to run
CMD ["bash"]
CMD ["./setup.sh"]
# Or: A command to keep the container running
CMD ["tail", "-f", "/dev/null"]

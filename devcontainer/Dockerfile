FROM mcr.microsoft.com/vscode/devcontainers/universal:2-linux

# Switch to codespace user
USER codespace
ENV HOME=/home/codespace

# Install informative git for bash
RUN git clone https://github.com/magicmonty/bash-git-prompt.git $HOME/.bash-git-prompt --depth=1

# Set up .bashrc
RUN echo "GIT_PROMPT_ONLY_IN_REPO=1" >> $HOME/.bashrc && \
    echo "source \${HOME}/.bash-git-prompt/gitprompt.sh" >> $HOME/.bashrc

# Initialize Conda
RUN bash -c "conda init bash"
RUN bash -c "conda update -y -n base -c defaults conda \
    # Set Channel Priority
    && conda config --set channel_priority flexible"

# Create New Conda Environment
RUN bash -c "conda create -y --name py39 python=3.9 \
    # Install Conda Packages
    && conda install -y -n py39 pylint pandas jupyter plotly matplotlib seaborn scikit-learn"

# Switch back to root
USER root

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

ARG BASE_IMAGE
FROM --platform=linux/arm64 ${BASE_IMAGE}

# Set Oh My Zsh default folder
ENV ZSH_CUSTOM /root/.oh-my-zsh/custom

# Install system dependencies
RUN apk update && \
    apk add --no-cache less zsh

# Install Oh My Zsh
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
COPY zshrc /root/.zshrc
COPY p10k.zsh /root/.p10k.zsh

# Copy private key
COPY id_pk /root/.ssh/
# Setup ssh config
COPY ssh_config /root/.ssh/config

# Install plugins for Oh My Zsh
RUN git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Setup git config
COPY gitconfig /root/.gitconfig

# Set correct timezone
RUN ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

ARG BASE_IMAGE
FROM ${BASE_IMAGE}

# Set Oh My Zsh default folder
ENV ZSH_CUSTOM /root/.oh-my-zsh/custom

# Install system dependencies
RUN apk update && \
    apk add --no-cache less zsh

# Install Oh My Zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Install powerlevel10k
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
COPY zshrc /root/.zshrc
COPY p10k.zsh /root/.p10k.zsh

# Install plugins for Oh My Zsh
RUN git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Install gitconfig
COPY gitconfig /root/.gitconfig

# Set correct timezone
RUN ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

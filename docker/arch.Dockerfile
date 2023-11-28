# Use the base Arch Linux image
FROM archlinux:latest

# Install necessary tools
RUN pacman -Syu --noconfirm && pacman -S --noconfirm git 

# Create a directory to clone the repository
WORKDIR /root
RUN git clone https://github.com/rayanramoul/RayTerm/ dotfiles

# Set the working directory to where your dotfiles are
WORKDIR /root/dotfiles

# Run setup scripts from the dotfiles repository
RUN bash setup_all.sh 

# Set the default command to zsh
CMD ["zsh"]


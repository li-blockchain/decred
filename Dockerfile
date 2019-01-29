FROM ubuntu:latest

# Get our system all up to date
RUN apt-get update && apt-get install wget -y

# Add our user
RUN useradd -ms /bin/bash liblockchain 

WORKDIR /home/liblockchain

# Install the dcred wallet CLI
RUN wget https://github.com/decred/decred-release/releases/download/v1.3.0/dcrinstall-linux-386-v1.3.0 && chmod u+x dcrinstall-linux-386-v1.3.0

#&& ./dcrinstall-linux-386-v1.3.0



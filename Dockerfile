FROM ubuntu

LABEL author="Jiten Palaparthi"

# The basic ubuntu image does not have vim installed.
# would like to create an image with vim

# step 1 : apt update
# step 2:  apt upgrade
# step 3 : apt install vim -y
# each run command creates a new layer
RUN apt update

RUN apt upgrade

RUN apt install vim -y

CMD ["bash"]
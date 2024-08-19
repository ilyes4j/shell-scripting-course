# build the image
```shell
cd <directory containing the image>
docker build -t ubuntu_unminimized .
```

# How to run interactive bash with the regular ubuntu user not root
docker run -it --user 1000:1000 ubuntu_unminimized /bin/bash

# To map the current directory to the home directory inside the container
docker run -v "$(pwd):/home/ubuntu" -it --user 1000:1000 ubuntu_unminimized /bin/bash

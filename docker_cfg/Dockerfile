FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu16.04

RUN echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt install -y --no-install-recommends software-properties-common 
RUN add-apt-repository ppa:jonathonf/vim && apt update

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        git \
        curl \
        wget \
        vim \
        ca-certificates \
        libjpeg-dev \
        libpng-dev


#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple torch==0.3.1
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple torchvision==0.2.1
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorboardX

#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple mxnet-cu80
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple easydict
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple cmake

RUN apt install -y openssh-client openssh-server
RUN git clone https://github.com/huismiling/work_space.git ~/work_space && \
    cd ~/work_space && \
    /bin/bash deploy.sh && \
    /bin/bash install-opencv.sh

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall
RUN cd ~/.vim/bundle/YouCompleteMe && \
    python3 install.py

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
RUN chmod -R a+w /workspace


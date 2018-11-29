FROM nvidia/cuda:8.0-cudnn7-devel-ubuntu14.04 

RUN echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt install -y --no-install-recommends software-properties-common 
RUN add-apt-repository ppa:jonathonf/vim && apt update

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        curl \
        wget \
        vim \
        ca-certificates \
        libnccl2=2.0.5-2+cuda8.0 \
        libnccl-dev=2.0.5-2+cuda8.0 \
        libjpeg-dev \
        libpng-dev

RUN wget --quiet https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh && \
    echo "export PATH=/opt/conda/bin:$PATH" >> ~/.bashrc
ENV PATH="/opt/conda/bin:${PATH}"

RUN /opt/conda/bin/conda install -c conda-forge xorg-libxrender xorg-libxext libiconv xorg-libxau
RUN /opt/conda/bin/conda install -c mw gtk2
RUN /opt/conda/bin/conda install numpy pyyaml scipy ipython mkl
RUN /opt/conda/bin/conda install -c https://conda.anaconda.org/menpo opencv3
RUN /opt/conda/bin/conda install -c hcc pycocotools

#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple torch==0.3.1
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple torchvision==0.2.1
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow
#RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorboardX

RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple mxnet-cu80
RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple easydict
RUN /opt/conda/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple cmake

RUN apt install -y openssh-client openssh-server
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN mkdir ~/work/huismiling -p && \
    cd ~/work/huismiling && \
    git clone https://github.com/huismiling/work_space.git && \
    cd work_space && \
    /bin/bash deploy.sh

RUN export PATH=/opt/conda/bin:$PATH

RUN vim +PluginInstall +qall
RUN cd ~/.vim/bundle/YouCompleteMe && \
    /opt/conda/bin/python install.py

RUN rm -rf /var/lib/apt/lists/*


WORKDIR /workspace
RUN chmod -R a+w /workspace


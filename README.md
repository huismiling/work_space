# work_space

## install vim8
>sudo add-apt-repository ppa:jonathonf/vim  
>sudo apt update  
>sudo apt install vim  

## vimrc
>git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  
>
>命令行直接安装 `vim +PluginInstall +qall`
>
>或者：
>
>plugin install cmd:  
>1.open vim  
>2.cmd :PluginInstall  

## Link cmd
>rm -f .vimrc .tmux.conf .bash_aliases .gitconfig .inputrc  
>ln -s work/huismiling/work_space/_vimrc .vimrc  
>ln -s work/huismiling/work_space/_tmux.conf .tmux.conf  
>ln -s work/huismiling/work_space/_bash_aliases .bash_aliases  
>ln -s work/huismiling/work_space/_gitconfig .gitconfig  
>ln -s work/huismiling/work_space/_inputrc  .inputrc  



## SSH

配置免密码的方式：

1.生成秘钥  
>ssh-keygen -t rsa  

2:拷贝秘钥到远程机器  

>ssh-copy-id -i ~/.ssh/id_rsa.pub user@remote  
>把本机的公钥追到user的.ssh/authorized_keys里  

3：如果ssh的端口不是22，可用下面命令  

>ssh-copy-id -i ~/.ssh/id_rsa.pub "-p 23 user@remote"


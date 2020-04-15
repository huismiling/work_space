work_space=$PWD
cd ~
rm -f .vimrc .tmux.conf .bash_aliases .gitconfig .inputrc  
cp $work_space/_vimrc .vimrc  
cp $work_space/_tmux.conf .tmux.conf  
cp $work_space/_bash_aliases .bash_aliases  
cp $work_space/_gitconfig .gitconfig  
cp $work_space/_inputrc  .inputrc  
cp $work_space/_pip .pip -r

cd -


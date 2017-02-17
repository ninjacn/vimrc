## Clone
`git clone --recursive https://github.com/ninjacn/vimrc.git`

## 通过软链连接vim目录
`ln -s ../vimrc ~/.vim`

## 添加插件-submodule
    cd ~/.vim/bundle && \
    git submodule add git://github.com/tpope/vim-sensible.git

## Update
`git submodule update --init --recursive`

## Delete submodule
`git-delete-submodule bundle/vim-snipmate`

## Display submodule status
`git submodule status`

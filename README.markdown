# pathogen.vim

Manage your `'runtimepath'` with ease.  In practical terms, pathogen.vim
makes it super easy to install plugins and runtime files in their own
private directories.

## Installation

Install to `~/.vim/autoload/pathogen.vim`.  Or copy and paste:

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

If you're using Windows, change all occurrences of `~/.vim` to `~\vimfiles`.

## Runtime Path Manipulation

Add this to your vimrc:

    execute pathogen#infect()

## clone
`git clone --recursive https://github.com/ninjacn/vimrc.git`

## 通过软链连接vim配置文件和插件目录
`ln -s ./vimrc ~/.vimrc`
`ln -s ../vimrc ~/.vim`

## 添加插件-submodule
    cd ~/.vim/bundle && \
    git submodule add git://github.com/tpope/vim-sensible.git

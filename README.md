# Configuration of OS X/Ubuntu

## Include
  This is a repository contains some configuration files for OS X/Ubuntu.

  Include:
  * .pip/pip.config
  * .gitconfig
  * .tmux.conf
  * .vimperatorrc
  * .zshrc
  * kde_global_keyboard_shortcuts.kksrc


## *homebrew*
  * Install `homebrew`

    ```bash
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
    ```

## Ruby

  * Install `rvm`

    ```bash
    curl -L https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable --autolibs=enabled
    ```

  * Replace `gem sources`

    ```bash
    # replace the gem sources
    gem sources --remove https://rubygems.org/

    gem sources -a http://ruby.taobao.org/

    # gem sources -l       #用来查看source list
    ```

  * Install `ruby`

    ```bash
    rvm install 2.0
    ```

  * Install `rails`

    ```bash
    [sudo] install rails
    ```


## oh-my-zsh

  * Install `oh-my-zsh` -  see [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
    ```bash
    curl -L http://install.ohmyz.sh | sh
    ```

## Python

  * pip sources
    see [使用国内镜像源来加速python pypi包的安装](http://topmanopensource.iteye.com/blog/2004853)
    or see evernote (使用国内镜像源来加速python pypi包的安装)
    In file `~/.pip/pip.conf`:

    ```bash
      [global]

      index-url = http://pypi.douban.com/simple
    ```

  * Install `virtualenvwrapper`

    ```bash
    pip install virtualenvwrapper
    ```

  * Install `IPython` and `IPython nodebook`
    see [Here](http://ipython.org/install.html)

    ```bash
    pip install pyzmq jinja2 tornado ipython
    ```

## NodeJS

  * Install `nvm`

    see [github/nvm](https://github.com/creationix/nvm)
    ```bash
    curl https://raw.githubusercontent.com/creationix/nvm/v0.8.0/install.sh | sh
    ```

  * Install `node`

    ```bash
    nvm install 0.11.13
    nvm alias default 0.11.13
    nvm use 0.11.13
    ```

## Usage

  * Just Run:

    ```bash
    ./generate_links.sh
    ```

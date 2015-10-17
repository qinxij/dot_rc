# Configuration of OS X/Ubuntu
---


## What's in
This is a repository contains some configuration files for OS X/Ubuntu.

Include:
  
 * .pip/pip.config
 * .gitconfig
 * .tmux.conf
 * .vimperatorrc
 * .zshrc
 * kde_global_keyboard_shortcuts.kksrc
 
 etc.


## homebrew
  * Install `homebrew`, see [homebrew](http://brew.sh/).

	```
	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
		
	```

## Ruby

  * Install `rvm`, see [rvm website](http://www.rvm.io/).

	```
	curl -L https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable --autolibs=enabled   
	```
	or
	
	```
	curl -sSL https://get.rvm.io | bash -s stable
	```

  * Replace `gem sources`

	```
	# replace the gem sources
	gem sources -r https://rubygems.org/
	
	gem sources -a https://ruby.taobao.org/
	
	# gem sources -l 用来查看source list
	```

  * Install `ruby`

    ```
    rvm install 2.0
    ```

  * Install `rails`

    ```
    [sudo] gem install rails
    ```


## oh-my-zsh

  * Install `oh-my-zsh` -  see [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    ```
    curl -L http://install.ohmyz.sh | sh
    ```
   
  * Install `fzf` - see [fzf](https://github.com/junegunn/fzf).

	```
	git clone https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
	```
	
  * Install `autojump` or `j` - see [autojump](https://github.com/joelthelion/autojump)
  
    OS X:
    
    ```
    brew install autojump
    ```
    
    Ubuntu:
    
    ```
    sudo apt-get install autojump
    ```
  * Install `zgen` - see [zgen](https://github.com/tarjoilija/zgen)
  
    ```
    git clone https://github.com/tarjoilija/zgen.git ~/.zgen
    ```

## Python

  * Install pip. See [pip](https://pypi.python.org/pypi/pip/) and [pip installing](https://pip.pypa.io/en/latest/installing.html).

	```
	curl https://bootstrap.pypa.io/get-pip.py | python
	```

  * pip sources.

	- See [使用国内镜像源来加速python pypi包的安装](http://topmanopensource.iteye.com/blog/2004853)

	- See evernote (使用国内镜像源来加速python pypi包的安装).
	
    In file `~/.pip/pip.conf`:

    ```
    [global]

    index-url = http://mirrors.aliyun.com/pypi/simple/
    ```

  * Install `virtualenvwrapper`. See [virtualenvwrapper](https://bitbucket.org/dhellmann/virtualenvwrapper/overview) on Bitbucket.

    ```
    pip install virtualenvwrapper
    ```

  * Install `IPython` and `IPython nodebook`
    see [Here](http://ipython.org/install.html)

    ```
    pip install pyzmq jinja2 tornado ipython
    ```

## NodeJS

  * Install `nvm`, see [github/nvm](https://github.com/creationix/nvm).
  
    ```
    curl https://raw.githubusercontent.com/creationix/nvm/v0.8.0/
    install.sh | sh
    ```

  * Install `node`, see [node](http://www.nodejs.org/)

    ```
    nvm install 0.11.13
    nvm alias default 0.11.13
    nvm use 0.11.13
    ```

## Usage

  * Just Run:

    ```
    ./generate_links.sh
    ```

# Symfony binary completion for Zsh

This is a [Oh My Zsh](https://ohmyz.sh/) plugin that provides completion for the [Symfony binary](https://symfony.com/doc/current/setup/symfony_server.html) (also knows as Symfony local web server).

You can alse use the completion without *Oh My Zsh*.

## Completion

This plugin provide completion for the following commands:  

- `symfony`
- `symfony console`
- `symfony composer`

## Installation

There are two ways to install the Symfony binary completion; depending on whether you have *Oh My Zsh* or not.

### With *Oh My Zsh*

First, retrieve the plugin cloning the repository:
```
$ git clone https://github.com/l-vo/ohmyzsh-sfbinary $ZSH_CUSTOM/plugins/sfbinary
```

Then add it to the plugins array in your `~/.zshrc` file:
```
plugins=(... sfbinary)
```

Finally source `.zshrc` to take the changes in account:
```
source ~/.zshrc
```

### Without *Oh My Zsh*
First, clone the repository (For instance, let's cloning it in the home directory):
```
$ cd ~
$ git clone https://github.com/l-vo/ohmyzsh-sfbinary
```

Then add in your `~/.zshrc` file:
```
autoload -U compinit
compinit
source ~/sfbinary/sfbinary.plugin.zsh
```
Where `~/sfbinary` is the path where you previously cloned the repository.

Finally source `.zshrc` to take the changes in account:
```
source ~/.zshrc
```

## Contributions
The shell commands used to retrieve the autocompletion list are probably not the best optimized. If you have better ideas to do that, pull requests are welcome 🙂.

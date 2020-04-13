# Symfony binary completion for Oh My Zsh

This is a [Oh My Zsh](https://ohmyz.sh/) plugin that provides completion for the [Symfony binary](https://symfony.com/doc/current/setup/symfony_server.html) (also knows as Symfony local web server).

## Completion

This plugin provide completion for the following commands:  

- `symfony`
- `symfony console`
- `symfony composer`

## Installation

First, retrieve the plugin cloning the repository:
```
$ git clone https://github.com/l-vo/ohmyzsh-sfbinary $ZSH_CUSTOM/plugins/sfbinary
```

Then add it to the plugins array in your `~/.zshrc` file:
```
plugins=(... sfbinary)
```

Finally source .zshrc to take changes in account:
```
source ~/.zshrc
```

## Contributions
The shell commands used to retrieve the autocompletion list are probably not the best optimized. If you have better ideas to do that, pull requests are welcome 🙂.

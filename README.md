# `gopath` Helper Script

This script contains a function that helps you select a Go workspace to work
on, and sets up your environment accordingly.

To install the `gopath` helper into your Bash profile:

```
~/ $ git clone https://github.com/ereyes01/gopath
~/ $ echo '. $HOME/gopath/gopath.sh' >>~/.bashrc
```

To use a directory called `./ws` as your Go workspace:

`gopath ./ws`

The `gopath` helper function does the following:

- Sets `$GOPATH` to the fully qualified path of `./ws`
- Adds `$GOPATH/bin` to the front of your $PATH variable
- Sets `GO15VENDOREXPERIMENT` to "1" to enable Go 1.5's vendor management
  feature.

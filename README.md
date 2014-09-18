Simple shell script to make it easier to read local Haddock docs
on Mac OS X.

## Installation

    echo "source ~/git/haskell-local-docs/hdoc.sh" >> ~/.bash_profile
    source ~/.bash_profile

## Usage

    $ hdoc aes
    Searching for "aes*" documentation in .cabal-sandbox...
    Opening aeson-0.8.0.0 documentation.

    $ hdoc a
    Searching for "a*" documentation in .cabal-sandbox...
    3 results found. Which did you mean?
    aeson-0.8.0.0
    attoparsec-0.12.1.0
    attoparsec-conduit-1.1.0

## Building documentation

Add `--enable-documentation` when installing:

    cabal install aeson --enable-documentation

or set `documentation: True` in your `~/.cabal/config` or `project.cabal`.

If you forgot to do this beforehand, unfortunately the only option is to
reinstall. Hope you were using a sandbox (and don't mind waiting 20
minutes):

    cabal install aeson --reinstall --enable-documentation

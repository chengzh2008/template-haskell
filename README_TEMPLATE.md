# PKGNAME

[![PKGNAME on hackage](https://img.shields.io/hackage/v/PKGNAME)](http://hackage.haskell.org/package/PKGNAME)
[![PKGNAME on Stackage Nightly](https://stackage.org/package/PKGNAME/badge/nightly)](https://stackage.org/nightly/package/PKGNAME)

Generated with [template-haskell](https://github.com/jonascarpay/template-haskell)

# Setup develop environment

## Nix (recommanded)

### install nix

see the description (https://zero-to-nix.com/start/install)

### enable flake

add teh following to `~/.config/nix/nix.conf`
`experimental-features = nix-command flakes`

### clone the repo for a project setup

`git clone git@github.com:chengzh2008/template-haskell.git <your-package-name>`

### config the project

`cd <your-package-name>`
`./wizard.sh` and answer some questions

### install and enable direnv

`echo "use flake" >> .envrc`

### install vscode extentions

- haskell
- haskell syntax highlighting
- direnv by Martin Kühl
- nix extension pack

## ghcup

### install ghcup

`curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`

### install vscode extentions

let ghcup to manage other tools for extensions

- haskell
- haskell syntax highlighting

# How to build and run

## run the executable

`cabal run PKGNAME-exe`

## run the test

`cabal run PKGNAME-test`

## run the bench

`cabal run PKGNAME-bench`

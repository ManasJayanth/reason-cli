# Reason CLI packaged for global installation

I wanted to write [`org-babel`](https://orgmode.org/worg/org-contrib/babel/intro.html) language support for Reason. `org-babel`
is an emacs plugin to work with multiple languages in one single
`org-mode` file.

Such language backends usually require a global toolchain. I already
have a feeling, as I read about sessions in the `org-mode`
documentation, that this will soon be obsolete - it's likely that esy
could be used to create sandboxes.

Let's give it try anyway. It's useful to have Reason tools installed globally.

## How it works

We use Esy to compile these tools and package them for NPM. To package,


```
esy
esy release
cd _release
npm pack 
npm publish ./prometheansacrifice-reason-cli-0.0.0.tgz
# or
npm i -g ./prometheansacrifice-reason-cli-0.0.0.tgz
```

## Usage

```
--help                          Show this help message
install                         Install the project dependencies package.json. Uses esy internally.
build                           Build the project with instructions in package.json. Uses esy internally.
repl                            Build the project with instructions in package.json. Uses rtop

```

## Status
Currently unpublished to NPM

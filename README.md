# `devshed`

## About

Devshed contains Nix dev shells for various open source projects that don't
provide one themselves. Think [typeshed](https://github.com/python/typeshed),
but for Nix dev shells.

If you've ever struggled to get started contributing to an open source project,
`devshed` may help! If the project you want to work on is missing, consider
[contributing](./CONTRIBUTING.md) a dev shell.

## Using

All the dev shells are provided as a flake.

To activate a dev shell:

```console
nix develop github:jfly/devshed#neovim
```

Or consider adding a `.envrc` at the root of the project (and add that `.envrc`
to your `.git/info/exclude` so you don't accidentally commit it):

```bash
use flake github:jfly/devshed#neovim
```

## Is this a good idea?

I don't know. Obviously it would be great if every project had its own Nix
powered dev shell, but until we're there, I think a project like this is worth
trying out. We're all repeating the same work every time we try to contribute
to some random open source projects, even a few hits is pretty valuable.

Even if this doesn't take off, it's useful for me so I can reformat my laptop
without losing the random tooling I've set up for projects I've contributed to.

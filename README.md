dash rogue
==========


![License Badge](https://img.shields.io/github/license/thyrgle/dash-rogue)

## About

I will be streaming OCaml game development on my [Twitch channel](https://www.twitch.tv/thyrgle) every Saturday from 2 - 3:30pm PDT. During this stream I will be mostly working on this game ("dash rogue") a rogulelike where the player will be able "dash" distance across the screen to knockback and damage enemies. Want to join me and build this game *live*?

## Status

The game is *very very* early in development. But that's part of the fun. Watch me make *questionable* decisions and learn some OCaml and Raylib with me!

## Why opensource?

This is mostly to have fun, and also if the opensource community (including you?) want to contribute you're more than welcome! I will be working on documentation and issues. In the meantime, you can check the stream to see what I am working on and what still needs to be done (of course, only if you're interested - no pressure!)

## Getting Started

Of course, ensure that [OCaml](https://ocaml.org/install#linux_mac_bsd) is installed. For managing everything I use [opam](https://opam.ocaml.org/) and [dune](https://dune.build/).

Once those are installed, run:

```
git clone https://github.com/thyrgle/dash-rogue.git
opam install forcamla raylib gg ease-caml
dune exec -- dash-rogue
```

## Contributing

See [Contributing](CONTRIBUTING.md).

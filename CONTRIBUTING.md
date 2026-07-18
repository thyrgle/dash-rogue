# Contributing to dash-rogue

Thanks for your interest in dash-rogue! This project is early-stage and actively evolving, which makes it a great time to get involved — there's plenty of room to help shape it.

## Ways to contribute

- **Code** — new features, bug fixes, refactors
- **Bug reports** — if something breaks, open an issue
- **Documentation** — README improvements, code comments, examples
- **Ideas/design** — gameplay mechanics, roguelike design feedback
- **Playtesting** — try it out and tell me what feels off

You don't need to be an OCaml expert to help. If you're newer to the language, check issues labeled `good first issue` — they're scoped to be approachable.

## Getting set up

This is an OCaml project built with [Dune](https://dune.build/).

## Making a change

1. **Fork the repo** and create a branch off `main` (e.g. `fix/dash-collision-bug`)
2. **Make your change**, keeping commits focused and messages descriptive
3. **Run `dune build` and `dune test`** to make sure nothing's broken
4. **Open a pull request** against `main` with:
   - A short description of what changed and why
   - A note on how you tested it (if applicable)
   - A link to the related issue, if there is one

For larger changes (new systems, big refactors), it's worth opening an issue first to discuss the approach before writing code — saves everyone rework.

## Code style

- Follow the formatting conventions already used in the codebase (run `ocamlformat`)
- Prefer clear, small functions over clever one-liners
- Comment non-obvious logic, especially around game state and mechanics

## Issues

- Check existing issues before opening a new one to avoid duplicates
- For bugs, include steps to reproduce and what you expected to happen
- For feature ideas, a short description of the mechanic/behavior is enough to start a conversation

## Live development

I stream OCaml development on this project on [Twitch](https://www.twitch.tv/thyrgle), Saturdays 2–3:30pm PDT. It's a good place to ask questions, see the codebase evolve in real time, or pair on something together. Drop by if you want to chat before diving in.

## Code of Conduct

Be respectful and constructive. This is a small, casual project — let's keep it a welcoming place to learn and build.

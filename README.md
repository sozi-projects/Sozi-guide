# Sozi-book

Source code of the Sozi book.

## Build tools and dependencies

1. Download and install [Racket](https://download.racket-lang.org/).
2. Install [Pollen](https://docs.racket-lang.org/pollen/):

```
raco pkg install pollen
```

3. Install [Node.js](https://nodejs.org/)
4. Install required npm packages:

```
npm install
```

## Local project server

Start the project server from the root folder of this repository:

```
raco pollen start
```

Then open a web browser at: http://localhost:8080

## Publishing

Generate a publishable version of the book:

```
raco pollen publish . ../Sozi-book.dist
```

## License

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

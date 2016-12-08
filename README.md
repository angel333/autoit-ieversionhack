# IEVersionRegHack

This hack changes version of embedded IE (_IECreateEmbedded())

_(see https://msdn.microsoft.com/en-us/library/ee330730.aspx)_


Use it like this:

    #include <path/to/IEVersionRegHack.au3>
    __IEVersionRegHack()

It'll cleanup afterwards automatically.

## TODO

- maybe check if there isn't a key already and then return it
  afterwards

## License

MIT

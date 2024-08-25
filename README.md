# crypto-cold-wallet
A cold wallet generator for L1 cryptocurrencies

This Dockerfile builds an image that can create cold wallets for
cryptocurrencies such as [Bitcoin](https://bitcoin.org/),
[Dogecoin](https://dogecoin.com/), and [Pepecoin](https://pepecoin.org/).

The image relies on the Perl libraries
[App-Bitcoin-PaperWallet](https://metacpan.org/dist/App-Bitcoin-PaperWallet)
and [Bitcoin::Crypto](https://metacpan.org/dist/Bitcoin-Crypto).

## Downloading

Download this image from the GHCR.

## Usage

Run the image with:

```bash
$ docker run -it <imagename>
```

This will provide a help message.

```bash
$ docker run -it <imagename> -network dogecoin --auto -o
```

This will prompt you for a secret password (type it on the command line) and
generate a Dogecoin cold wallet and output the BIP-39 passphrase and generated
addresses to the console.

You may also generate `pepecoin` and `bitcoin` wallets, as well as the
`_testnet` variants of all three networks. See the `-help` message for more
information.

## COPYRIGHT

Copyright (c) 2024 chromatic. This code is released under the MIT License. Note
that the code distributed in the Docker image may have other licenses.

## ABOUT

This is a Crowd Funding Project is a technique used to raise money for a project or business when a large number of individuals contribute modest sums of money, usually online. This decentralized method democratizes access to cash by enabling project developers to accept contributions from a wider range of donors.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

# To deploy

forge create is used as command and

```
forge script script/Deploycontract.s.sol --rpc-url $RPC_URL --private_key $PRIVATE_KEY --broadcast
```

# To get the hex into Decimal

Here, is the command

```
cast --to-base 0x2ab dec
```

## TODO

1. Install `foundry-zksync`
2. Compile with `--zksync`
3. Reinstall vanilla foundry

# What can we do to work with addresses outside our system?

1. Uint
   - Testing a specific part our code
2. Integration
   - Testing how our code works with other parts of our code.
3. Forked
   - Testing our code on a simulated real environment.
4. Staging
   - Testing our code in a real environment that is not production.

## prank

`prank` : seta msg.sender to the specified address for the next call."The next call" includes static calls as well, but not calls to the cheat code address.

## makeAddr

`makeAddr` : creates an address derived from the provided `name`.

A `label` is created for thr derived address with the provided `name` used as the label value.

## deal

`deal` sets the balance of an address who to `newBalance`.

## hoax

Sets up a `prank` from an address that has some ether.
if the balance is not specified, it will be set to 2^128 wei.

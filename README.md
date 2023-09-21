# Token Smart Contract

The Token Smart Contract is an Ethereum smart contract written in Solidity. It implements the ERC-20 token standard and extends it with additional functionality, including token minting and burning. This contract is also made Ownable, allowing the contract owner to perform certain privileged operations.

## Features

### ERC-20 Token Standard

This contract adheres to the ERC-20 token standard, providing basic functionalities such as transfer, balance inquiry, and allowance management.

### Minting Tokens

The contract owner has the exclusive right to mint additional tokens. The `mint` function allows the owner to create new tokens and distribute them to specific accounts.

### Transferring Tokens

Users can transfer tokens to different accounts using the `transferTokens` function. It ensures that the sender has a sufficient balance and that the transfer amount is greater than zero.

### Burning Tokens

Users can burn their tokens using the `burnTokens` function. It allows token holders to reduce their token balance by a specified amount, provided they have a sufficient balance.

## Contract Deployment

To deploy this contract, follow these steps:

1. Specify the contract's name, symbol, and initial supply when deploying.
2. The deploying address becomes the initial owner of the contract.

## Usage

- Ensure that you have the necessary prerequisites, including Solidity ^0.8.0 and the OpenZeppelin contracts.
- Deploy the contract on the Ethereum blockchain.
- Interact with the contract using Ethereum wallets or dApps to transfer, mint, and burn tokens.

## Prerequisites

- Solidity ^0.8.0
- OpenZeppelin contracts (ERC20.sol and Ownable.sol)

## License

This smart contract is released under the MIT License.

For more details on how to deploy and interact with this smart contract, please refer to the Ethereum development documentation.

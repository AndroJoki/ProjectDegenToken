# Project: Degen Token

This Solidity program is about ERC20 tokens. The purpose of this program is to help understand deploying ERC20 tokens to the Avalanche network and be able to mint, transfer, and burn tokens using the Metamask wallet.

## Description

This program is a Solidity-based smart contract designed to help developers deploy and interact with ERC20 tokens on the Avalanche network. It includes functions to mint, transfer, and burn tokens, redeeming items in the in-game store, which showcases how these operations can be performed within the framework of the ERC20 standard. Users can utilize MetaMask to manage their tokens, enabling seamless integration with the Avalanche network. This contract serves as a practical example for developers aiming to understand and implement ERC20 tokens, providing a comprehensive guide for deploying and managing tokens in decentralized applications on Avalanche.

## Getting Started

### Creating the program

To run this program, you would need to clone this GitHub repository to your computer. The setup process requires a lot of steps so check the GUIDE.md for further details of setting up the program.

### Executing the program

To mint tokens, click on the "DegenToken" contract in the left-hand sidebar in the "Deployed/Unpinned Contracts" section, and then click on the "mint" function. Next, input the address of an account in the _address textfield and the amount of tokens to mint in the _value textfield. Finally, click on the "transact" button to execute the function and mint tokens on the account that was inputted. The mint function will only work if the owner was the one who executed it.

To transfer tokens to another account, click on the "DegenToken" contract in the left-hand sidebar in the "Deployed/Unpinned Contracts" section, and then click on the "transferTokens" function. Next, input the address of an account in the _address textfield and the amount of tokens to transfer your tokens in the _value textfield. Finally, click on the "transact" button to execute the function and transfer tokens to the account that was inputted.

To burn your tokens, click on the "DegenToken" contract in the left-hand sidebar in the "Deployed/Unpinned Contracts" section, and then click on the "burnTokens" function. Next, input the amount of tokens to burn in the _value textfield. Finally, click on the "transact" button to execute the function and burn your tokens.

To check the balance or amount of tokens that an account has, click on the "DegenToken" contract in the left-hand sidebar in the "Deployed/Unpinned Contracts" section, and then click on the "balanceOf" function. Next, input the address of an account in the address textfield. Finally, click on the "call" button to execute the function and the amount of tokens of the account that was inputted will be displayed.

To redeem items in the in-game store, click on the "DegenToken" contract in the left-hand sidebar in the "Deployed/Unpinned Contracts" section, and then click on the "redeemTokens" function. Next, input the ID of the preferred item in the itemID textfield. Finally, click on the "transact" button to execute the function and redeem the item.

## Authors

Metacrafter napjoquino

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

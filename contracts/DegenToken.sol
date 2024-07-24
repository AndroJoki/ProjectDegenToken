// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    
    // Item struct to represent an in-game item
    struct Item {
        uint256 id;
        string name;
        uint256 cost;
    }

    // Array to store items
    Item[] public items;

    // Mapping to store redeemed items by users
    mapping(address => Item[]) private redeemedItems;
    
    constructor(address initialOwner)
        ERC20("Degen", "DGN")
        Ownable(initialOwner)
    {
        // Initialize the items
        items.push(Item(1, "Degen NFT", 150)); // Item 1: Degen NFT costs 150 DGN
        items.push(Item(2, "Shirt", 100)); // Item 2: Shirt costs 100 DGN
        items.push(Item(3, "Mug", 75));  // Item 3: Mug costs 75 DGN
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() override public pure returns (uint8) { 
		return 0;
	}
	function getBalance() external view returns (uint256) {
		return this.balanceOf(msg.sender);
	}

	function transferTokens (address _receiver, uint256 _value) external {
		require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens");
		approve(msg.sender, _value);
		transferFrom(msg.sender, _receiver, _value);
	}

    // Burn tokens owned by the sender
    function burnTokens(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens to burn");
        approve(msg.sender, _value);
        burnFrom(msg.sender,  _value);
    }

    // Get the in-game store items as a string
    function showStoreItems() external pure returns (string memory) {
        return "ID:1 Ballpen, ID:2 Shirt, ID:3 Mug";
    }

    // Redeem tokens for an in-game item
    function redeemTokens(uint256 itemId) external {
        // Check if the item exists
        require(itemId > 0 && itemId <= items.length, "Item does not exist");

        Item memory item = items[itemId - 1];

        // Check if the user has enough tokens to redeem the item
        require(balanceOf(msg.sender) >= item.cost, "You do not have enough Degen Tokens to redeem this item");

        // Burn the tokens and add the item to the user's redeemed items
        approve(msg.sender, item.cost);
        burnFrom(msg.sender,  item.cost);
        redeemedItems[msg.sender].push(item);
    }

    // Get redeemed items of the sender
    function getRedeemedItems() external view returns (Item[] memory) {
        return redeemedItems[msg.sender];
    }

}
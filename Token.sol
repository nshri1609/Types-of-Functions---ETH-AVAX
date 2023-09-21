// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20, Ownable {
    constructor(string memory Token_name, string memory Token_symbol, uint256 initialSupply) ERC20(Token_name, Token_symbol) {
        _mint(msg.sender, initialSupply);
    }

    // Function to mint tokens
    // only contract owner can mint tokens

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Function to transfer tokens
    // any one can transfer token to different account

    function transferTokens(address recipient, uint256 amount) public returns (bool) {
        
        require(amount > 0, "ERC20: Token transfer amount must be greater than zero");
       require(balanceOf(msg.sender) >= amount, "ERC20: Low balance");

        _transfer(msg.sender, recipient, amount);
        return true;
    }

    // Function to burn tokens 
    // any user can burn token

    function burnTokens(uint256 amount) public returns (bool) {
        require(amount > 0, "ERC20: burn amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "ERC20: Low balance");

        _burn(msg.sender, amount);
        return true;
    }
}

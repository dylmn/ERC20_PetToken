// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PetToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("PetToken", "PT") Ownable(initialOwner) {}

    function mintPetToken(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burnPetToken(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function transferPetToken(address recipient, uint256 amount) external returns (bool) {
        return transfer(recipient, amount);
    }
}

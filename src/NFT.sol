// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.10;

import "solmate/tokens/ERC721.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";

contract NFT is ERC721 {
    //storage
    uint256 public currentTokenId;

    //constructor
    constructor(
        string memory _name,
        string memory _symbol
    ) ERC721(_name, _symbol) {}

    //state changing functions

    //view functions
}

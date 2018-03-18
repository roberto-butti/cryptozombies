pragma solidity ^0.4.19;

import "./zombieattack.sol";
import "./erc721.sol";

contract ZombieOwnership is ZombieAttack, ERC721 {

  function balanceOf(address _owner) public view returns (uint256 _balance) {
    // 1. Return the number of zombies `_owner` has here
    return ownerZombieCount[_owner];
  }

  function ownerOf(uint256 _tokenId) public view returns (address _owner) {
    // 2. Return the owner of `_tokenId` here
    return zombieToOwner[_tokenId];
  }

  function transfer(address _to, uint256 _tokenId) public {

  }

  function approve(address _to, uint256 _tokenId) public {

  }

  function takeOwnership(uint256 _tokenId) public {

  }
}

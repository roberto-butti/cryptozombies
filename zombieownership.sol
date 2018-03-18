pragma solidity ^0.4.19;

import "./zombieattack.sol";
import "./erc721.sol";

contract ZombieOwnership is ZombieAttack, ERC721 {

  function balanceOf(address _owner) public view returns (uint256 _balance) {
    return ownerZombieCount[_owner];
  }

  function ownerOf(uint256 _tokenId) public view returns (address _owner) {
    return zombieToOwner[_tokenId];
  }

  function _transfer(address _from, address _to, uint256 _tokenId) private {
    ownerZombieCount[_to]++;
    ownerZombieCount[_from]--;
    zombieToOwner[_tokenId] = _to;
    Transfer(_from, _to, _tokenId);
  }

  // 1. Add modifier here
  function transfer(address _to, uint256 _tokenId) public onlyOwnerOf(_tokenId){
    // 2. Define function here
    _transfer(msg.sender, _to, _tokenId);
  }

  function approve(address _to, uint256 _tokenId) public {

  }

  function takeOwnership(uint256 _tokenId) public {

  }
}

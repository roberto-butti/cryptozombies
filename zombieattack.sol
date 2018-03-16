pragma solidity ^0.4.19;

import "./zombiehelper.sol";

contract ZombieBattle is ZombieHelper {
  // Start here
  uint randNonce = 0;

  function randMod(uint _modulus) internal returns (uint) {
    randNonce++;
    return uint(keccak256(now, msg.sender, randNonce)) % _modulus;

  }
}

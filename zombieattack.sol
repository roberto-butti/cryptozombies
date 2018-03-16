pragma solidity ^0.4.19;

import "./zombiehelper.sol";

contract ZombieBattle is ZombieHelper {
  uint randNonce = 0;
  // Create attackVictoryProbability here
  uint attackVictoryProbability = 70;


  function randMod(uint _modulus) internal returns(uint) {
    randNonce++;
    return uint(keccak256(now, msg.sender, randNonce)) % _modulus;
  }

  // Create new function here
  function attack(uint _zombieId, uint _targetId) external {
    
  }
}

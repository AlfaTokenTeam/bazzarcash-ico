pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Bazzarcash is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Bazzarcash(address _owner)  UpgradeableToken(_owner) {
    name = "Bazzarcash";
    symbol = "BZZ";
    totalSupply = 4500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
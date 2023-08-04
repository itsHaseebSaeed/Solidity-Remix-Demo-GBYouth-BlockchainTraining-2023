// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract FunctionTypes{
uint public number = 4;
// default
function addPure(uint256 _number) public pure returns (uint temp_number){
  temp_number = _number + 2;
}
// pure
function addPure() public view returns (uint temp_number) {
 temp_number = number +2;
}
// view
function addView() public view returns(uint _number){
 _number = number + 2;
}
}
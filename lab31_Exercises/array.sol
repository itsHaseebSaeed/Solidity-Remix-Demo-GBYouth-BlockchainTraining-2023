// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract DArray {
uint[] public arr;
function getlength() public view returns(uint){
return arr.length;
}
}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Array{
int[] public array;
function ipush() public{
array.push(-5);
array.push(0);
array.push(5);
}
function get() public view returns(int[] memory){
return array;
}
function getlength() public view returns(uint){
return array.length;
}
}
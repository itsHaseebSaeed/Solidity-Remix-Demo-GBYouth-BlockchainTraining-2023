// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Dynamic {
string[] private arry2;
function upush() public{
  arry2.push() = "Ali";
   arry2.push() = "shan";
}

function getlength() public view returns(uint){
return arry2.length;
}

function upop() public{
arry2.pop();
}
 function arry() public view  returns(string[] memory){
return arry2;
 }
}

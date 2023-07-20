// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ViewAndPure {
 
 address public  owner;


 function setOwner() public returns (address) {
    owner= msg.sender;
    return owner;

 }

 function readOwner() public view returns (address) {
   //  owner= msg.sender; // Gives error cannot change state in view
    return owner;
 }

//   function random() public pure returns (address) {
//    //  owner= msg.sender; // Gives error cannot change state in view
//     return owner;
//  }



}

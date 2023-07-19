// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Quiz {
    uint256 public x = 10; // state variable
    uint256 public y = 10; // state variable
    uint256 blockNumber = block.number; // state variable



function check_3(uint u2) public pure returns(string memory){
    if (u2 < 256) {
        return "Value can be stored in uint8";
    } else if (u2 < 65536) {
        return "Value can be stored in uint16";
    }
    else if(u2 < 4294967295){
                return "Value can be stored in uint32";

    }
     else {
        return "Value cannot be stored in uint8 or uint16";
    }
}


// function check_3(uint u2) public pure returns(string memory){
//     return u2 < 256 ? "Value can be stored in uint8" : u2 < 65536 
//     ? "Value can be stored in uint16" : "Value cannot be stored in uint8 or uint16";
// }

}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionModifier {
    // We will use these variables to demonstrate how to use
    // modifiers.
    address public owner;

    constructor() {
        owner = msg.sender;
    }

  
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
  
        _;

        

    }



    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

   
}

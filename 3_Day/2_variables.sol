// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    string public text = "Hello";
    uint private num = 123;

    function doSomething() public view returns(uint,uint,address) {
        uint i = 456;

        uint timestamp = num + i + block.timestamp; 
        address sender = msg.sender; 

        return (i,timestamp,sender);
    }

    function doSomethingState(uint val) public    {
        num = val;
    }
}



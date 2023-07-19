// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    uint8 public num = 255;
    uint8 public num2 = 255;
    // uint8 public num3 = num + num2;



    function doSomething() public view returns(uint) {
    uint8 num3 = num + num2;
    return num3;
    }
}



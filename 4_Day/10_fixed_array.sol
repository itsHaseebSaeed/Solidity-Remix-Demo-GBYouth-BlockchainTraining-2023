// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {

    uint[2] public num1 = [1,2];
    uint8[3] public num2 ;

    function setInt1(uint i , uint8 _num1) public {
        num1[i] = _num1;
    }

    function setInt2(uint i , uint8 _num2) public {
        num2[i] = _num2;
    }






}




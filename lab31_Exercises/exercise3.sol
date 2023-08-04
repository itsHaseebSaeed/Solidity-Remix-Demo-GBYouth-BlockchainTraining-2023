// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract circumference{

    function area( uint radius) public pure returns(uint cir){
    cir = 2*radius*31415/10000;

    }
}
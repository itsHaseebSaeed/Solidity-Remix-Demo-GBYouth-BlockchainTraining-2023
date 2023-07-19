// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract MaxUintCalculator {// digit = 11



    function maxUint(uint256 digits) public pure returns (uint256) {
       uint max;
        for(uint256 i = 0; i < digits; i++) {
            uint256 value = 1;
            for(uint256 j = 0; j < i; j++) {
                value *= 2;
            }
            max += value;
        }
        return max;
    }
}

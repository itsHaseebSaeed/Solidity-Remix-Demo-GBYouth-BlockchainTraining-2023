// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract FixedArray{

    uint[4] public arr1 = [5, 6,4,8];
 
 function arry() public view  returns(uint[4] memory){
return arr1;
 }

    function replace_index() public {
        arr1[0] = 10;
         arr1[3] = 19;
    }
}
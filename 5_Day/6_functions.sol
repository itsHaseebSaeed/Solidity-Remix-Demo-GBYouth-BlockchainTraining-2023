// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Function {

    struct IDK{
        uint age;
        bool isMale;
        uint balance;
    }
    // Functions can return multiple values.
    function F() public pure returns (IDK memory) {
        return IDK({age:1,isMale:true, balance:100});
    }

    function _f() private {
        
    }

   
}



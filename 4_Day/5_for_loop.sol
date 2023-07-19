// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Quiz {
    uint public sum = 0;

    function calculateSum(uint n) public {
        for (uint i = 0; i <= n; i++) {
            //i=0, n=5, 0<=5 T , i+1 = 0, sum + 0 = 0 
            //i=1, n=5, 1<=5 T , i+1 = 1, sum + 1 = 1
            //i=2, n=5, 2<=5 T , i+1 = 2, sum + 2 = 3
            //i=3, n=5, 3<=5 T , i+1 = 3, sum + 3 = 6
            //i=4, n=5, 4<=5 T , i+1 = 4, sum + 4 = 10
            //i=5, n=5, 5<=5 T , i+1 = 5, sum + 5 = 15
            //i=6, n=5, 6<=5 F 
            sum += i;
        }
    }
}


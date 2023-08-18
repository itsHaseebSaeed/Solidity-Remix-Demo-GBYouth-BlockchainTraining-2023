// // SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract MerkleRoot {
    uint[] public arr;

    function computeMerkleRoot(uint[] memory myArray) public returns (uint) {
       
        arr = myArray;

        while (arr.length > 1) {
            uint[] memory temp = new uint[](arr.length / 2 + arr.length % 2); // Handle odd length
            uint index = 0;

            for (uint i = 0; i < arr.length; i += 2) {
                if (i + 1 < arr.length) {
                    uint sum = arr[i] + arr[i + 1];
                    temp[index] = sum;
                } else {
                   
                    temp[index] = arr[i];
                }
                index++;
            }

            arr = temp;
        }

        return arr[0];
    }
}


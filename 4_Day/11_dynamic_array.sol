// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//Dynamic vs fixed array
//Initializing styles
//Push
//Pop
//lenght
//delete

contract Array {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        delete arr[index];
    }

    function examples() public pure returns (uint8[5] memory) {
    // create array in memory, only fixed size can be created
    uint8[5] memory a = [0, 5, 10, 15, 20];
    return a;
    }


}

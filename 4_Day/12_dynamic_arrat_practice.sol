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
    int[] public uninit_arr;

    function uninitPush(int i) public{
        uninit_arr.push(i);
    }

        function getArr() public view returns (int[] memory) {
        return uninit_arr;
    }


        function uninitPop() public{
        uninit_arr.pop();
    }

    function uninitLen() public view returns(uint)  {
        return uninit_arr.length;
    }

    function remove(uint index) public {
        delete uninit_arr[index];
    }

    function setInt1(uint i , int8 _num1) public {
        uninit_arr[i] = _num1;
    }


 

}

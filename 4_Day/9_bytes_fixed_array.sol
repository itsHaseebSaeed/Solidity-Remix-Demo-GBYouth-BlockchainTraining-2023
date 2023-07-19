// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//Question 1: What are bytes1, bytes2, bytes3, and bytes4?
contract Array {

    bytes1 public var1 ='a'; // Value of a ?
    bytes2 public var2 = 'ab';// Value of ab ?
    bytes3 public var3 = 'abc';// Value of abc ?
    bytes4 public var4 = 0x12345678;//Value of var4 ?

    //What will happen if i=4? i=3? i=2 ?
    function getBytes(uint i) public view returns(bytes1){
        return var3[i];
    }
    //What value will be returned ?
    function getBytesLength() public view returns (uint){
        return var4.length;
    }


}




// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract BytesDatatype{
    bytes public emptyBytes = "";
    bytes public stringBytes = "Hello, World!Hello, World!";
    bytes public InitBytes = new bytes(16);
    bytes public hexBytes = hex"48656c6c6f2c20576f726c6421";
    bytes public intBytes = abi.encodePacked(uint256(255));
    bytes public addressBytes = abi.encodePacked(address(msg.sender)); // ???

    bytes2 public xyz = hex"ffff";


    function getByte(uint i) public view returns ( bytes1) {
        return stringBytes[i];
    }
}

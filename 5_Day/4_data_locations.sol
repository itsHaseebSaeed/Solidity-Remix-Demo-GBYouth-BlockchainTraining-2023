// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataLocations {

    uint[] public arrx = [1,2,3,4,5];

    function get() public view returns (uint[] memory){
        return arrx;
    }

    //Memory vs Storage

    function _storage() public {
        arrx[1] = 100;
    }

    function _mem() public view returns (uint[] memory){
        uint [] memory arrm = arrx;
        arrm[1]=200 ;
        return arrm;
    }


    mapping(string => uint) balance;


    //Calldata vs Memory
    function _memory(string memory _name) public pure returns(string memory) {
        _name = "Ali";
        return _name;
    }

    //Read only
    function _calldata(string calldata _name) public pure returns (string memory){
        // _name = "Ali";
        return _name;
    }




    
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract dataloc{

    uint[] public state_array=[1,2,3,4,5];

    function Storage() public{
        _getInStorage(state_array); //1) storage to storage // share the data location
        _getInMem(state_array);     //2) storage to memory //
        // getInCall(state_array);  //3) storage to calldata     
    }

    function Memory(uint [] memory arr) public{
    
        // _getInStorage(arr); //1) memory to storage
        _getInMem(arr);        //2) memory to memory
        //getInCall(arr);      //3) memory to calldata 
    }

    function Calldata(uint [] calldata arr) public{
        // _getInStorage(arr); //1) calldata to storage
        _getInMem(arr);        //2) calldata to memory
        _getInCall (arr);      //3) calldata to calldata
    }

    function _getInStorage(uint [] storage arr) private{

    }

    function _getInMem(uint [] memory arr) private{

    }

    function _getInCall (uint [] calldata arr) private {

    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract BytesDatatype{

    function getBool(bool isEmploy) public pure returns (bool){
        bool hasBalance = true;
        bool GetPaid = isEmploy && hasBalance;
        return GetPaid;
    }


}

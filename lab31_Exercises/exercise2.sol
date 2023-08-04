// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract exercise2 {
function setp1() public pure returns(string memory , string memory , address){
    return("shan", "male", 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 );
}

function setp2() public pure returns(string memory name, string memory gender, address _address){
    return(
        name ="shan", 
        gender ="male", 
        _address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 );
}
function setp3() public pure returns(string memory name, string memory gender, address _address){
    
        name ="shan";
        gender ="male";
        _address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}


}
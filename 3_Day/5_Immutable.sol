// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Quiz {
    address private immutable owner_imm;
    


    constructor() {
        owner_imm = msg.sender;
    }

    function getter() public view returns (address){
        return owner_imm;
    }



    // function trial() public {
    //     owner_imm = msg.sender;
    // }
}

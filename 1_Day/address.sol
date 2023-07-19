// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract addressDatatype{
    address public contract_owner;

    constructor() {
        contract_owner = msg.sender;
    }

    function transferEther(address payable _recipient_address) public payable returns(uint){
        uint transfer_amount = msg.value;
        _recipient_address.transfer(transfer_amount);
        return address(_recipient_address).balance;
    }
}

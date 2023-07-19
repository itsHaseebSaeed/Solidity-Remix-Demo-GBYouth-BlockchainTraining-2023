// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract balancesMapping {
    // balances mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) private balances;

    function get(address _addr1, uint _account_no) public view returns (bool) {
        // You can get values from a balances mapping
        // even when it is not initialized
        return balances[_addr1][_account_no];
    }

    function set(address _addr1, uint _account_no, bool _boo) public {
        balances[_addr1][_account_no] = _boo;
    }

    function remove(address _addr1, uint _account_no) public {
        delete balances[_addr1][_account_no];
    }
}

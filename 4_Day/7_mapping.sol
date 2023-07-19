// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Mapping {
    // Mapping from address to uint
    // 1)
    mapping(address => uint) public Balance;
    // 2) setting getter
    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return Balance[_addr];
    }

    // 3) setting setter
    function set(address _addr, uint _i) public {
        // Update the value at this address
        Balance[_addr] = _i;
    }
    // 4) Removing the function
    // 5) Question: What happens if I remove a value twice? Will it give error?
    function remove(address _addr) public {
        // Reset the value to the default value.
        delete Balance[_addr];
    }
}




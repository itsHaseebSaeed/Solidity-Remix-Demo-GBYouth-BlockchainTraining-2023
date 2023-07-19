// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Account {
    uint public balance;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Cannot store this amount in uint256");// reverts all state changes and return remaining gas

        balance = newBalance;

        assert(balance >= oldBalance); // reverts all state changes and depletes all gas
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "You're trying to withdraw more than your current balance");

        if (balance < _amount) {
            revert("Underflow"); // reverts all state changes and return remaining gas
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }

    function Require(uint _amount)public {
    require( _amount > 100, "Some error");

    withdraw(_amount);
    }

    function Revert(uint _amount)public {
        if(_amount > 100){
        revert("Some error");
        }
        withdraw(_amount);



    }

    function Assert(uint _amount)public {
        withdraw(_amount);
        assert( _amount > 100);


    }



}

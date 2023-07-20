// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Animal {
    string public species="";
    uint public age=0;

    function doesEat() public pure returns (string memory) {
        return "The animal eats.";
    }

    function DoesSleep() public pure returns (string memory) {
        return "The animal sleeps.";
    }
}

// Cat contract inherits from Animal
contract Cat is Animal {

    // string public species;
    // uint public age;


    //Can change the value only in function/constructor
    constructor() {
        species = "Cat";
        age = 0;
    }


    function meow() public pure returns (string memory) {
        return "The cat meows.";
    }

    function setAge(uint _age) public {
        age = _age;
    }
}

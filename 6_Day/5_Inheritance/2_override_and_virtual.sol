
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

    function baz() public pure returns (string memory) {
        return "A";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
    function bar() public pure override returns (string memory) {
        // string memory var1 = super.foo();
        // return var1;
        return "B";
    }
}

contract C is B {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}



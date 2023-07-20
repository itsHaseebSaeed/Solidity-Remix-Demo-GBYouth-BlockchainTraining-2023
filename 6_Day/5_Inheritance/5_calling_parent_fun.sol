// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract E {
    event Log (string message);
    function foo () public virtual {
        emit Log ("E. foo");
    }
    function bar() public virtual {
        emit Log ("E.bar");
    }
}
contract F is E {
    function foo() public virtual override {
        emit Log ("F. foo");
        E.foo(); // Method 1
    }
    function bar() public virtual override {
        emit Log ("F.bar");
        super.bar(); //Method 2
    }
}


/*
calling parent functions
- direct
- super

   E
 /   \
F     G
 \   /
   H
*/

contract G is E {
    function foo() public virtual override {
        emit Log ("G. foo");
        E.foo(); // Method 1

    }
    function bar() public virtual override {
        emit Log ("G. bar");
        super.bar(); //Method 2
    }
}

contract H is F,G {
    function foo() public virtual override(F,G) {
        emit Log ("H. foo");
        F.foo(); // Method 1
    }
    function bar() public virtual override(F,G) {
        emit Log ("H. bar");
        super.bar(); //Method 2
    }
}
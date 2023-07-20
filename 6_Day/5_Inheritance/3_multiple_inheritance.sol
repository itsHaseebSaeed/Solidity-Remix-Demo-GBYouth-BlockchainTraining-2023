// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

/*
    X
  / |
Y   |
  \ |
    Z
 */

// X is the most base contract
contract X {
    function foo() public pure virtual returns (string memory) {
        return "X";
    }
    function bar() public pure virtual returns (string memory) {
        return "X";
    }
    function x() public pure virtual returns (string memory) {
        return "X";
    }
}

// Y inherits from X
contract Y is X {
    function foo() public pure override virtual returns (string memory) {
        return "Y";
    }
    function y() public pure virtual returns (string memory) {
        return "Y";
    }
}

// Z inherits from X and Y
contract Z is X, Y {

    //What will happen if I remove this function ?
    function foo()public pure override(X,Y) returns (string memory) {
       return super.foo();
    }

    function baz() public pure returns (string memory) {
        return "Z";
    }

    function bar() public pure override returns (string memory) {
        return super.bar();
    }


}

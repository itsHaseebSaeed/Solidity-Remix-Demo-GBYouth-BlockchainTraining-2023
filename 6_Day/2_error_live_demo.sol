// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorLiveDemo {

    int public i;

    function int_to_uint(int num) public pure returns (uint){ 
    //If cond is true then code will continue /otherwise will execute statement after comma
    // require (num >= 0, "Int is -tive, not possible to convert to uint");
    // uint _u1 = uint(i);
    // return _u1;

    // if( num < 0){
    //     revert("Int is -tive, not possible to convert to uint");
    // }

    assert(num >= 0);

    uint _u1 = uint(num);
    return _u1;


}

}

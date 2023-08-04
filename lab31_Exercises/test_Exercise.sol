// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Array {
    int[] private array;
    function push(int) public returns(int _number) {
     array.push(_number);
    }
    function retrive(uint _index) public view returns(int){
    return array[_index];
}
  function del(uint _index) public {
    delete array[_index];
}
function pop() public{
    array.pop();
}
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Student {


    struct balance {
        uint amount;
    }

    enum role{
        teacher,
        student
    }

    struct StudentStruct {
        string name;
        uint age;
    }

    StudentStruct[] public ss;


    mapping(address => StudentStruct) students;

    // StudentStruct public student;

    function setName(string memory _name, address _addr) public {
        students[_addr].name = _name;
    }

    function setAge(uint age, address _addr) public {
        students[_addr].age = age;
    }
    

   



 
}

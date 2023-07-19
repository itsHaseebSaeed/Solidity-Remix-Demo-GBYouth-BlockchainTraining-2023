// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    // Enum representing shipping status
    enum Role {
        None,
        Teacher,
        Student,
        Admin
    }

    // Default value is the first element listed in

    mapping(address => Role) private  person;

    // Returns uint
    // Teacher  - 1
    // Student  - 2
    // Admin    - 3
    function get(address addr) public view returns (Role) {
        return person[addr];
    }

    // Update Role by passing uint into input
    function set(Role _role,address _addr) public {
        person[_addr] = _role;
    }

    function SetTeacher(address _addr) public {
        person[_addr] = Role.Teacher;
    }
    function SetStudent(address _addr) public {
        person[_addr] = Role.Student;
    }
    function SetAdmin(address _addr) public {
        person[_addr] = Role.Student;
    }
        function remove(address _addr) public {
       delete person[_addr];
    }


}

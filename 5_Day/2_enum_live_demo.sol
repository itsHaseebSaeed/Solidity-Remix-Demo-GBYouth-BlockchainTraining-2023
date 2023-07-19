// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    // Enum representing shipping status
    enum Role {
        None, //0
        Teacher, //1
        Students, //2
        Admin //3
    }


    Role public class_role;

    function indexing(Role _role) public {
        class_role = _role;
    } 

    function teacher() public {
        class_role = Role.Teacher;
    }


    function students() public returns (Role) {
        class_role = Role.Students;
    
        return class_role;
    }

    function admin() public {
        class_role = Role.Admin;
    }


    function remove() public {
        delete class_role;
    }

}

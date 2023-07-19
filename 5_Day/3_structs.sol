// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Todos {
    struct Todo {
        string task;
        bool completed;
    }

    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string calldata _task) public {

        // todos.push(Todo(_task, false));

        todos.push(Todo({task: _task, completed: false}));

        // Todo memory todo;
        // todo.task = _task;
        // todos.push(todo);
    }

    function getData() public view returns (Todo[] memory) {
        return todos;
    }

   // //Will this work? Compile error?
    // function createDirect(Todo calldata _todo) public {
    //     todos.push(_todo);
    // }

    // update task
    function updatetask(uint _index, string calldata _task) public {
        Todo storage todo = todos[_index];
        todo.task = _task;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}

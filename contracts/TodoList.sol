pragma solidity ^0.5.0;

contract TodoList {
    //this is a state variable any data written in the state variable is stored in the blockchain
    uint public taskCount = 0;

    constructor() public {
        createTask('Keep calm and learn smart contracts using Etherium');
    }

    //model the data type
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    //this serves as the state variable/storage for the tasks we will create, more like the table tasks
    mapping (uint => Task) public tasks;

    //create a method to add new tasks
    function createTask(string memory _content) public {
        taskCount++;

        tasks[taskCount] = Task(taskCount, _content, false);
    }
}

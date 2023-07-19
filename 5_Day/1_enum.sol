// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status private status;


    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    function pending() public {
        status = Status.Pending;
    }

    function shipped() public {
        status = Status.Shipped;
    }

    function accepted() public {
        status = Status.Accepted;
    }

    function rejected() public {
        status = Status.Rejected;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}

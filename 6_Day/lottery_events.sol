// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LotteryEvent {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event WinnerLog(address indexed sender, uint amount);

    function decideWinner(uint winning_amount) public {
        //selecting winner
        //send amount        
        emit WinnerLog(msg.sender,winning_amount);
    }

        function decideWinnerNoEvent(uint winning_amount) public {
        //selecting winner
        //send amount
    }
}

contract FourteenAugEvent {

    event IndependenceDay(address indexed sender, string whatsapp_number);

    function subscribe(string memory whatsapp_number) public {    
        emit IndependenceDay(msg.sender,whatsapp_number);
    }

}

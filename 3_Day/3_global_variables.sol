// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    uint public last_claimed;
    uint public duration = 60;

    constructor(){
        last_claimed = block.timestamp;
    } 

    function  send_ether_from_faucet() public {
        uint now_time = block.timestamp;
        require(now_time > last_claimed+duration);
        last_claimed = now_time;

        //send tokens
    }

        function  time_left() public view returns (uint){
        uint now_time = block.timestamp;
        uint t_left = now_time - last_claimed;


        //send tokens
        return duration - t_left;

    }


}



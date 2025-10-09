// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    // state variables

    int8 public ageLimit = type(int8).max - 27; 

    uint16 public year = 2026;

    string public founder = "Bilge Bilir";

    function yearPlus() public {

        uint8 extraYear = 10; // local variable

        year += extraYear;
    }

    // global variables

    address seller = msg.sender;

    uint public currentTimestamp = block.timestamp; // 1760029501

    uint public finalTime = currentTimestamp + 5000; // 1760034501
    
}

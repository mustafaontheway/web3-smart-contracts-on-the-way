//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract GetterFunctions {

uint public stateVar = 10;

// Define a view function named 'viewFunc' that returns the value of 'stateVar'

    function viewFunc() public view returns (uint) {

        return stateVar;
    }

// Define a pure function named 'pureFunc' that takes two uint parameters 'x' and 'y' and returns their sum

    function pureFunc(uint x, uint y) public pure returns (uint) {

        return x + y;
    }

// Define a function named 'process' that takes two uint parameters 'a' and 'b', it calls 'pureFunc' with 'a' and 'b' as arguments and stores the result in 'stateVar'

    function process(uint a, uint b) public {

        stateVar = pureFunc(a, b);
    }
}

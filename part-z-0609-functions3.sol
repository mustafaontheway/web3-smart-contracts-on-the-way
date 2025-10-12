//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

/*
Exercise 3: Create a contract named 'ArrayStorage' with a state variable 'arr' of type uint256 array. Create a function 'addElement' that takes a uint256 parameter and adds it to the end of 'arr'. Create a function 'getElement' that takes a uint256 parameter representing an index and returns the element at that index in 'arr'.
*/

contract ArrayStorage {

    uint256[] public arr;

    function addElement(uint256 element) public {

        arr.push(element);
    }

    function getElement(uint256 index) public view returns (uint256) {

        return arr[index];
    }
}

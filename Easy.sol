// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Easy {
    bool public solved = false;
    
    function dontSolve() public {
        solved = true;
    }
}
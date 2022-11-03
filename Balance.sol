// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Balance {
    bool public solved = false;

    function solve() public {
        require(address(this).balance > 0);
        solved = true;
    }
}
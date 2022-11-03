// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Random {
    bool public solved = false;

    function _getRandomNumber() internal pure returns (uint256) {  
        return 12;                                                   
    }
    
    function solve(uint256 guess) public {
        require(guess == _getRandomNumber());
        solved = true;
    }
}
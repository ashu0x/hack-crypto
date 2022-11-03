// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Yul {
    uint256 public n;
    bool public solved = false;

    function viewN() public view returns(uint256 val) {
        assembly{
            val := sload(n.slot)
        }
    }

    function solve() public {
        require(!isContract(msg.sender), "contract not allowed");
        solved = true;
    }

    function isContract(address account) public view returns(bool){
        uint contractSize;
        assembly{
            contractSize := extcodesize(account)
        }
        return contractSize > 0;
    }

}
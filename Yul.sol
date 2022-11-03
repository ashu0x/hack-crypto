// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract IsContract {
    uint256 public n;
    bool public solved = false;

    function viewN() public view returns(uint256 val) {
        assembly{
            val := sload(n.slot)
        }
    }

    function setN(uint256 slot, uint256 val) public {
        assembly{
            sstore(slot, val)
        }
    }

    function solve() public view returns(bool b){
        assembly{
            b := sload(solved.slot)
        }
    }

}
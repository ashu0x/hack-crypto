// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ClaimOwnership {

    address public owner = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    bool public solved = false;

    function setOwner(address newOwner) public {
        owner = newOwner;
    }

    function authenticate() public  {
        require(msg.sender == owner);
        solved = true;
    }
}
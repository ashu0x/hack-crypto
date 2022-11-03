// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Bank {

    bool public solved = false;

    constructor() payable {
        require(msg.value == 0.01 ether);     // 10000000000000000 wei
    }

    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal > 0);

        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Failed to send Ether");

        balances[msg.sender] = 0;
    }

    function getBalance() public view returns(uint bal){
        bal = address(this).balance;
    }

    function solve() public {
        require(getBalance()==0, "Balance not equal to 0");
        solved = true;
    }

}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataContract {

    address private owner;

    mapping(address=>uint) public balanceOf;

    // 访问控制
    mapping (address => bool) accessAllowed;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier platform() {
        require(accessAllowed[msg.sender] == true);
        _;
    }

    // 允许访问
    function allowAccess(address _addr) public onlyOwner {
        accessAllowed[_addr] = true;
    }

    // 拒绝访问
    function denyAccess(address _addr) public onlyOwner {
        accessAllowed[_addr] = false;
    }

    function setBalance(address to, uint amount) public platform {
        balanceOf[to] += amount;
    }
}
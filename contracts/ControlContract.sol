// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DataContract.sol";

contract ControlContract {

    DataContract dataContract;

    constructor(address dataContractAddr) {
        dataContract = DataContract(dataContractAddr);
    }

    // error: need to add ten
    function addTen(address addr) public {
        dataContract.setBalance(addr, 11);
    }
}
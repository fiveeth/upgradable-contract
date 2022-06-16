// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./DataContract.sol";

contract ImproveControlContract {

    DataContract dataContract;

    constructor(address improveDataContractAddr) {
        dataContract = DataContract(improveDataContractAddr);
    }

    function addTen(address addr) public {
        dataContract.setBalance(addr,  10);
    }
}
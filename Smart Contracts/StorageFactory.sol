// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "Contracts/SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStoragecontracts;

    function CreateSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStoragecontracts.push(newSimpleStorageContract);
    }

    function sfStore(uint128 _simpleStorageIndex, uint128 _newSimpleStorageNumber) public {
    // address
    // ABI => application binary interface 

        listOfSimpleStoragecontracts[_simpleStorageIndex].store(_newSimpleStorageNumber);

    }

    function sfGet(uint128 _simpleStorageIndex) public view returns(uint128) {

        return listOfSimpleStoragecontracts[_simpleStorageIndex].reteieve();

    }

}
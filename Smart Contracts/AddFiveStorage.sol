l// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "Contracts/SimpleStorage.sol";

contract AddFiveStore is SimpleStorage {
    // +5
    // override
    // virual
    function store(uint128 _NewNumber) public override {
        favoriteNum = _NewNumber +5;
    }
}
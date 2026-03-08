// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Animal {
    function sound() public virtual returns(string memory) {
        return "Animal makes a sound";
    }
}
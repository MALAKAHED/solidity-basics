// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "Tasks/Task3/ParentContract.sol";

contract Dog is Animal {
    function sound() public pure  override returns(string memory) {
        return "Dog barks";
    }
}
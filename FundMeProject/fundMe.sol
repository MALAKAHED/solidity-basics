// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract fundMe {

// function fund allow paople to send mony 
// minimum value to send

    function fund() public payable {

        require(msg.value > 1e18, "didn't send enough mony!");
        
    }

    // function withDraw() public {}
}
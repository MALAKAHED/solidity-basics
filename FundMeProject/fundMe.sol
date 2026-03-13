// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {priceConverter} from "FundMeProject/priceConverter.sol";

contract fundMe {

    using priceConverter for uint256;

    uint public minimumUsd = 5e18;

    address[] public funders;
    mapping(address funder => uint256 ammountFunded) public adressToAmountFunded;

    function fund() public payable {

        require(msg.value.getConversionRate() >= minimumUsd, "didn't send enough ETH!");
        funders.push(msg.sender);
        adressToAmountFunded[msg.sender] += msg.value;
    }
    
    function withDraw() public {
      //for(starting index ,       ended index,                   step amount) {}
        for(uint256 funderIndex = 0; funderIndex = funders.length; funderIndex++){
            address funder = funders[funderIndex];
            adressToAmountFunded[funder] = 0;
        }
    }
} 
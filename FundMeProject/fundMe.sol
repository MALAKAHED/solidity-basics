// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {priceConverter} from "FundMeProject/priceConverter.sol";

error NotOwner();

contract FundMe {

    using priceConverter for uint256;

    uint public constant MINIMUM_Usd = 5e18;

    address[] public funders;
    mapping(address funder => uint256 ammountFunded) public adressToAmountFunded;
    address public immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {

        require(msg.value.getConversionRate() >= MINIMUM_Usd, "didn't send enough ETH!");
        funders.push(msg.sender);
        adressToAmountFunded[msg.sender] += msg.value;
    }
    
    function withDraw() public ownerOnly {
      //for(starting index ,       ended index,                   step amount) {}
        for(uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++){
            address funder = funders[funderIndex];
            adressToAmountFunded[funder] = 0;
        }
        // reset the array
        funders = new address[](0);
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call failed");
    }

    modifier ownerOnly() {
        //require(msg.sender == i_owner, "Must be Owner!");
        if(msg.sender != i_owner) { revert NotOwner(); }
        _;
    }

    receive() external payable {
        fund();
     }

     fallback() external payable { 
        fund();
     }
}
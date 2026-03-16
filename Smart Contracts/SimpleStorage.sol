// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint128 public favoriteNum;

    struct person {
        uint favoriteNumber;
        string name;
    }

     // person public malak = person(1 , "maloka");

    person[] public listofpeople;
    mapping(string => uint128) public nameToFavoriteNumber;

    function store(uint128 _favoriteNum) public virtual  {
        favoriteNum = _favoriteNum;
    }
    
    function reteieve() public view returns(uint128) {
    return favoriteNum;
    }

    function addpeople(uint128 _favoriteNumber, string memory _name) public {
    listofpeople.push(person(_favoriteNumber, _name));
    nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
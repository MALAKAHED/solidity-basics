// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint128 public favoriteNum;
    struct Person {
        uint favoriteNumber;
        string name;
    }

    // Person public malak = Person(1 , "maloka");

    Person[] public listofpeople;
    mapping(string => uint128) public nameToFavoriteNumber;

    function store(uint128 _favoriteNum) public virtual {
        favoriteNum = _favoriteNum;
    }

    function reteieve() public view returns (uint128) {
        return favoriteNum;
    }

    function addpeople(uint128 _favoriteNumber, string memory _name) public {
        listofpeople.push(Person({ favoriteNumber: _favoriteNumber, name: _name }));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

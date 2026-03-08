// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract StudentScores {

    struct Student {
        string name;
        uint128 score;
    }

    Student[] public listOfStudents;
    mapping(string => uint128) public  getScore;

    function newStudent(string memory _name, uint128 _score) public {

        listOfStudents.push(Student(_name, _score));
        getScore[_name] = _score;
    }

    function GetStudentScore(string memory _name) public view  returns(uint128) {
        return getScore[_name];
    }

}
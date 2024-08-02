// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

//dynamic array
    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

// view, pure
    function retreive ()public view returns(uint256){
        return  myFavoriteNumber;
    }

//calldata, memory, pure
    function addPerson(string memory _name, uint _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }

}
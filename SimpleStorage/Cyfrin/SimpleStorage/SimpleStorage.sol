// Contract to store our favourite number and other users favourite number
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {

    uint256 myFavoriteNumber; // if no value is declared it defaults to 0
    
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople; // just to add a list of people

    mapping(string => uint256) public nameToFavoriteNumber; // to give each persons their favourite number. 
    //the array and mapping are seperate things , dont think they work together. The server different purposes here

    function store(uint256 _favoriteNumber) public virtual {// function to update the favourite number . whatever we put into the () is what parameter we put into the function
        myFavoriteNumber = _favoriteNumber; // you are setting favourite number to whatever value you pass in the " _..."
    }

    function retrieve() public view returns (uint256) { //simple retrieve
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name)); //for array .dont overcomplicate it 
        nameToFavoriteNumber[_name] = _favoriteNumber; //for mapping. see how they are seperate?
    }
}

contract SimpleStorage2 {}

contract SimpleStorage3 {}

contract SimpleStorage4 {}
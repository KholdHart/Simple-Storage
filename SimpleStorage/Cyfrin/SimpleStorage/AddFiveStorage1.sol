// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {

    /* function sayHello() public view returns (string memory) {
        return "hello";
    }*/

    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }


} //it will inherit everything from simple storage
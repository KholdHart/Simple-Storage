// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import{SimpleStorage} from "./SimpleStorage.sol"; //adds a reference to our Smart Contracts

contract StorageFactory {

    // uint256 public favouritenumber
    //stype visibilty name
    //first Simples is reffereing to the contract the second is refffering to the variable
    //SimpleStorage public simpleStorage; //public keyword automatically gives this a view function
    SimpleStorage[] public listOfSimpleStorageContracts;
    function createSimpleStorageContract() public {
        // this will deploy a contract andf save it to simplestorage
        SimpleStorage newSimpleStorageContract = new SimpleStorage(); //new is how solidity knows to deploy the contract
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber); // this sets the new value
    }


}
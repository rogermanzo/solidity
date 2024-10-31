//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

//herencia, heredar contracto para hacer uso de sus funcionalidades palabra reservada {is}
contract StorageFactory is SimpleStorage {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // siempre que querramos interactuar con un contrato se necesitan dos cosas:
        // address 
        // ABI
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        // aplicar refactoring
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }

}
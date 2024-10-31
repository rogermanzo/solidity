//SPDX-License-Identifie: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{
    // acepta números positivos uint
    uint256 favoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    //relacionar un string con un uint256
    mapping(string => uint256) public nameToFavoriteNumber;

    // le indicamos que esa variable es de tipo private con el "_"
    function store(uint256 _favoriteNumber) public {
          favoriteNumber = _favoriteNumber;
    }

    // view
    // pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    /*function pureFunction(uint256 _number) public pure {
        _number + _number;
    }*/


    //arrays
    People[] public people;

    People public Person = People ({favoriteNumber: 7, name: "Chrome"});

    //memory: vive solamente durante la ejecución {recomendado}

    //storage: vive permanentemente 
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
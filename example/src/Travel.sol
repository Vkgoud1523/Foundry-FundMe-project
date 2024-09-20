//SPDX-LICENSE-IDENTIFIER: MIT

pragma solidity ^0.8.18;

contract Travel {
    uint public value;
    uint public License = 12;
    struct Vechicles {
        uint year;
        string name;
    }

    Vechicles[] public listOfVechicles;

    mapping(string => uint) public nameToYear;

    // to store the value
    function store(uint _value) public virtual {
        value = _value;
    }

    function retrieve() public view returns (uint256) {
        return value;
    }

    // to add the vechicles
    function addVechicles(uint _year, string memory _name) public {
        listOfVechicles.push(Vechicles(_year, _name));
        nameToYear[_name] = _year;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Project {
    address public owner;

    struct Pet {
        string name;
        uint256 age;
        uint256 lastFed; // timestamp of last feeding
    }

    Pet[] public pets;

    event PetAdded(string name, uint256 age);
    event PetFed(uint256 petId, uint256 timestamp);

    constructor() {
        owner = msg.sender;
    }

    // Add a new pet (only owner)
    function addPet(string memory _name, uint256 _age) public {
        require(msg.sender == owner, "Only owner can add pets");
        pets.push(Pet(_name, _age, block.timestamp));
        emit PetAdded(_name, _age);
    }

    // Feed a specific pet, updating lastFed timestamp
    function feedPet(uint256 _petId) public {
        require(_petId < pets.length, "Invalid pet ID");
        pets[_petId].lastFed = block.timestamp;
        emit PetFed(_petId, block.timestamp);
    }

    // Get details of a pet by ID
    function getPet(uint256 _petId) public view returns (string memory, uint256, uint256) {
        require(_petId < pets.length, "Invalid pet ID");
        Pet storage pet = pets[_petId];
        return (pet.name, pet.age, pet.lastFed);
    }
}

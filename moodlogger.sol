// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract MoodLogger {
    // Mapping to store moods per user address
    mapping(address => string) private moods;

    // Set your current mood
    function setMood(string memory _mood) public {
        moods[msg.sender] = _mood;
    }

    // Get your current mood
    function getMood() public view returns (string memory) {
        return moods[msg.sender];
    }
}

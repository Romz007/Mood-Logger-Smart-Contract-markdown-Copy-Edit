
# Mood Logger 🧠💭

A simple Solidity smart contract that lets users record and retrieve their current mood — all stored securely on the blockchain.

---

## ✨ What is Mood Logger?

**Mood Logger** is a beginner-friendly Ethereum smart contract that allows each wallet address to store a personal "mood" string (e.g., "happy", "focused", "tired"). It’s a fun way to learn how mappings, `msg.sender`, and basic smart contract interactions work on Remix and testnets.

---

## 🚀 Features

- Set your mood on the blockchain
- Retrieve your own mood anytime
- Easily deployable via Remix and MetaMask
- Teaches the fundamentals of Solidity: mappings, functions, `msg.sender`, and visibility

---

## 🛠 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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




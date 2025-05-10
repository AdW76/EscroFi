// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Reputation Contract (Stub)
/// @notice Manages on-chain reputation scores for users.
contract Reputation {
    mapping(address => uint256) public reputation;

    event ReputationAdded(address indexed user, uint256 score);

    function addReputation(address user, uint256 score) external {
        reputation[user] += score;
        emit ReputationAdded(user, score);
    }

    function getReputation(address user) external view returns (uint256) {
        return reputation[user];
    }
}  

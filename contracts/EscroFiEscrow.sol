// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title EscroFi Escrow Smart Contract (Stub)
/// @notice This contract is a stub for demonstration purposes only.
contract EscroFiEscrow {
    address public client;
    address public freelancer;
    address public arbitrator;
    uint256 public amount;
    bool public isDisputed;
    bool public isReleased;

    event Deposited(address indexed client, uint256 amount);
    event Released(address indexed freelancer, uint256 amount);
    event Disputed(address indexed by);
    event Resolved(address indexed winner);

    constructor(address _freelancer, address _arbitrator) payable {
        client = msg.sender;
        freelancer = _freelancer;
        arbitrator = _arbitrator;
        amount = msg.value;
        isDisputed = false;
        isReleased = false;
        emit Deposited(client, amount);
    }

    function release() external {
        require(msg.sender == client, "Only client can release");
        require(!isReleased, "Already released");
        isReleased = true;
        payable(freelancer).transfer(amount);
        emit Released(freelancer, amount);
    }

    function dispute() external {
        require(msg.sender == client || msg.sender == freelancer, "Not allowed");
        require(!isDisputed, "Already disputed");
        isDisputed = true;
        emit Disputed(msg.sender);
    }

    function resolve(address winner) external {
        require(msg.sender == arbitrator, "Only arbitrator");
        require(isDisputed, "No dispute");
        payable(winner).transfer(amount);
        emit Resolved(winner);
    }
}  

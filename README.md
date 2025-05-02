# EscroFi Tech Overview

Welcome to the EscroFi technology repository! This document provides a high-level overview of how EscroFi works and how developers can get started.

## What is EscroFi?
EscroFi is a smart-contract-based payment solution for freelancers and clients, providing secure escrow, instant payments, and decentralized dispute resolution on the blockchain.

## How the Tech Works
- **Smart Contract Escrow:** Funds are locked in a smart contract until project milestones are completed and verified by both parties.
- **DAO Governance:** Disputes are resolved through decentralized, community-driven arbitration.
- **Instant Payments:** Upon milestone approval, funds are released instantly to freelancers.
- **Reputation System:** On-chain reputation scores for both clients and freelancers.
- **Multi-Signature Security:** Large transactions require multiple signatures for enhanced security.

## Getting Started for Developers
1. **Clone the Repository**
   ```bash
   git clone https://github.com/EscroFi/EscroFi.git
   cd EscroFi
   ```
2. **Install Dependencies**
   ```bash
   npm install
   # or
   pnpm install
   ```
3. **Run the App Locally**
   ```bash
   npm run dev
   ```
4. **Smart Contracts**
   - Smart contracts are located in the `contracts/` directory.
   - Use Hardhat or Foundry for local blockchain development and testing.

## Contributing
We welcome contributions! Please open issues or pull requests for improvements, bug fixes, or new features.

## License
MIT 
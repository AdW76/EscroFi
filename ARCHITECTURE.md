# EscroFi Architecture

![Architecture Diagram](architecture.png)

## Overview
EscroFi is a decentralized freelance escrow platform that combines a web frontend, optional backend API, Ethereum smart contracts, and a DAO for dispute resolution and governance.

## Components
- **Frontend (Next.js):** User interface for clients, freelancers, and arbitrators. Interacts directly with smart contracts via web3/ethers.js.
- **Backend (Optional):** REST API for off-chain data, notifications, and reputation aggregation.
- **Smart Contracts:** Core escrow, reputation, and dispute resolution logic on Ethereum.
- **DAO:** Community-driven governance and arbitration for disputes.

## Flow
1. **Contract Creation:** Client deploys an Escrow contract, specifying freelancer and arbitrator.
2. **Deposit:** Client deposits funds into the contract.
3. **Work & Milestones:** Freelancer completes work; client approves milestones.
4. **Release:** Client releases funds, or a dispute is raised.
5. **Dispute:** DAO/arbitrator resolves disputes via voting or direct action.
6. **Reputation:** Reputation contract updates scores based on outcomes.

## Security
- Funds are non-custodial and locked in smart contracts.
- Multi-signature and DAO voting for high-value transactions and disputes. 
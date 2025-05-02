# EscroFi API Documentation

## Smart Contract API (Solidity)

### EscroFiEscrow
- `constructor(address freelancer, address arbitrator) payable`: Deploy a new escrow contract.
- `release()`: Client releases funds to freelancer.
- `dispute()`: Client or freelancer raises a dispute.
- `resolve(address winner)`: Arbitrator resolves the dispute.

### Reputation (see Reputation.sol)
- `addReputation(address user, uint256 score)`: Add reputation points to a user.
- `getReputation(address user) view returns (uint256)`: Get a user's reputation score.

### DisputeResolution (see DisputeResolution.sol)
- `raiseDispute(address contractAddr)`: Raise a dispute for a contract.
- `vote(address contractAddr, bool inFavor)`: DAO members vote on dispute resolution.

---

## REST API (Example)

### POST `/api/escrow`
- Create a new escrow contract.
- **Body:** `{ client, freelancer, arbitrator, amount }`
- **Response:** `{ contractAddress }`

### POST `/api/escrow/:address/release`
- Release funds from escrow.
- **Response:** `{ success: true }`

### POST `/api/escrow/:address/dispute`
- Raise a dispute.
- **Response:** `{ success: true }`

### POST `/api/escrow/:address/resolve`
- Resolve a dispute.
- **Body:** `{ winner }`
- **Response:** `{ success: true }`

### GET `/api/reputation/:user`
- Get a user's reputation score.
- **Response:** `{ user, score }` 
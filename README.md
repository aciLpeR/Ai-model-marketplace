# Ai-model-marketplace
This decentralized application allows users to list, purchase, and rate AI models on the Ethereum blockchain. It uses smart contracts to manage the marketplace's core functionality, ensuring transparent transactions and model ratings.

Features
List AI Models: Users can list AI models for sale with a name, description, and price.
Purchase Models: Users can purchase available models from the marketplace.
Rate Models: Buyers can rate purchased models, contributing to their overall rating.
Withdraw Funds: Model creators can withdraw funds earned from sales.
Tech Stack
Frontend: React, Ethers.js
Backend: Hardhat, Solidity
Blockchain: Ethereum (Testnet/Ganache)
Project Structure
├── contracts/          # Solidity smart contracts
├── scripts/            # Deployment scripts for smart contracts
├── src/                # React frontend
│   ├── components/     # React components
│   └── abi/            # ABI files for smart contract interaction
├── hardhat.config.js   # Hardhat configuration
├── package.json        # NPM dependencies
└── README.md           # Project documentation
Getting Started
Prerequisites
Node.js and npm installed
Ganache (for local Ethereum blockchain)
MetaMask browser extension
Installation
Clone the repository:
git clone https://github.com/your-repo/ai-model-marketplace.git
cd ai-model-marketplace
Install dependencies:
npm install
Compile the smart contracts:
npx hardhat compile
Deploy the contract locally (using Ganache):

npx hardhat run scripts/deploy.js --network localhost
Start the React frontend:
npm start
Usage
List a Model: Use the form to add a new AI model to the marketplace.
Purchase a Model: Browse the available models and buy one.
Rate a Model: After purchase, leave a rating for the model.
License
This project is licensed under the MIT License.

Screenshot:
![main](https://github.com/user-attachments/assets/c993452b-a6a7-4638-9cfb-41f17bfe3aa7)
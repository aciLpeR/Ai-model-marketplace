require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: {
    version: "0.8.17",  // Make sure this matches your contract pragma
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  networks: {
    ganache: {
      url: "http://127.0.0.1:7545",
      accounts: [
        "0x9fcb49c47d164cda8caac1c7e07b6d1f7054d4eb71d3cb9ab83f6e60ba2552fa",  // Replace with your Ganache private keys
      ],
    },
  },
};

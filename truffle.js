var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "blue public scissors axis awesome envelope comic mouse hollow peace fence cause";
module.exports = {
  networks: {
      rinkeby: {
        provider:new HDWalletProvider(mnemonic,"https://rinkeby.infura.io/v3/c7f1ed26ae8b4f658a88f0d0c06fbe3b"),
        network_id: 4,
        gas: 6712390
        }
    }

};

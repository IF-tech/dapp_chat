// Import assert from Chai
const assert = require("chai").assert;

// Import the contract artifact
const DappChat = artifacts.require("./Chat.sol");

contract("DappChat", (accounts) => {
   let instance;

   before(async () => {
      instance = await DappChat.deployed();
   });

   describe("deployment", async () => {
      it("deploys successfully", async () => {
         const address = await instance.address;
         assert.notEqual(address, 0x0);
         assert.notEqual(address, "");
         assert.notEqual(address, null);
         assert.notEqual(address, undefined);
      });

      // More tests...
   });

   // More `describe` blocks...
});

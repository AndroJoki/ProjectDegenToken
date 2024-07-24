const hre = require("hardhat");

async function main() {
  // Get the Points smart contract
  const Degen = await hre.ethers.getContractFactory("DegenToken");

  // Deploy it
  const degen = await Degen.deploy("0x7aEb6aeAc5DEc1656ADEc6E4448f5EC8A2896bF8");
  await degen.waitForDeployment();

  // Display the contract address
  const address = await degen.getAddress();
  console.log(`Degen token deployed to ${address}`);
}

// Hardhat recommends this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

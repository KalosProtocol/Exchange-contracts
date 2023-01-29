// We require the Hardhat Runtime Environment explicitly here. This is optional 
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
var ethers = require('ethers');
const hre = require("hardhat");

async function main() {
  // const [deployer, firstAcct, secondAcct] = await hre.ethers.getSigners();
  const [deployer, firstAcct, secondAcct] = await hre.ethers.getSigners();

  console.log(
    "Deploying contracts with the account:",
    deployer.address
  );

  const KalosERC20 = await hre.ethers.getContractFactory("KalosERC20");
  const kalosERC20 = await KalosERC20.deploy();

  await kalosERC20.deployed();
  console.log("KalosERC20 Contract deployed to:", kalosERC20.address);

  const KalosFactory = await hre.ethers.getContractFactory("KalosFactory");
  const kalosFactory = await KalosFactory.deploy(deployer.address);

  await kalosFactory.deployed();
  console.log("KalosFactory Contract deployed to:", kalosFactory.address);

  const WBNB = await hre.ethers.getContractFactory("WBNB");
  const wBNB = await WBNB.deploy();

  await wBNB.deployed();
  console.log("WBNB Contract deployed to:", wBNB.address);

  const KalosRouter = await hre.ethers.getContractFactory("KalosRouter");
  const kalosRouter = await KalosRouter.deploy(kalosFactory.address, wBNB.address);

  await kalosRouter.deployed();
  console.log("KalosRouter Contract deployed to:", kalosRouter.address);

  console.log(deployer.address, '--deployerAddress');
  console.log(kalosERC20.address, '--KalosERC20');
  console.log(kalosFactory.address, '--KalosFactory');
  console.log(wBNB.address, '--WBNB');
  console.log(kalosRouter.address, '--KalosRouter');
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });

const {ethers} = require ("hardhat");

async function main(){

  const allowlistContract = await ethers.getContractFactory("AllowlistDapp");


   // deploying the contract setting 69 as the Maximum number of allowlisted addresses 
  const deployedAllowlistContract = await allowlistContract.deploy(69);


    // Wait for it to finish deploying

  await deployedAllowlistContract.deployed();


  console.log("Allowlist Dapp Contract Address: ", deployedAllowlistContract.address);
}

main()
  .then(() => process.exit(0))
  .catch((error)=> {
    console.error(error);
    process.exit(1);
  });
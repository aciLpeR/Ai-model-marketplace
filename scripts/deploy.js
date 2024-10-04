async function main() {
    const AIModelMarketplace = await ethers.getContractFactory("AIModelMarketplace");
    const marketplace = await AIModelMarketplace.deploy(); // Deploy the contract
    console.log("AIModelMarketplace deployed to:", marketplace.address); // Get the deployed address
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

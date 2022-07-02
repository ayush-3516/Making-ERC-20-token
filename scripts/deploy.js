async function main() {
    const AyushToken = await ethers.getContractFactory("AyushToken");
  
    const myToken = await AyushToken.deploy();
    console.log("Contract deployed to address:", myToken.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });

    // 0x1b59065B79a913356BE2C05E6D5792571084A5a0
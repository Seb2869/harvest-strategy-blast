const prompt = require('prompt');

async function main() {
  console.log("New implementation deployment.");
  console.log("Specify the implementation contract's name");
  prompt.start();
  const {implName} = await prompt.get(['implName']);

  const ImplContract = artifacts.require(implName);
  const impl = await ImplContract.new();

  console.log("Deployment complete. Implementation deployed at:", impl.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

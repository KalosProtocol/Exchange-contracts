npx hardhat verify --network goerli

npx hardhat verify --network testnet "0x9A8d17eB53a6EDeAB3d830c0A73565721F3d0904" 

# verify KalosFactory
# KalosFactory contract address, deployer address
npx hardhat verify --network testnet "0xe4d449CA3FD2B6ccadedb68902E8B9955C9ECD3C" "0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"
# KalosRouter contract address, factory, wBNB
npx hardhat verify --network testnet "0xb5437FE96CddDC9721C9E8899cc68d26850B536c" "0x14180EE2De5bfF3bA55950Fc705fcB5b0A499579" "0x22Efff8d6E67bBcA88D8aE7fC3c8E34a50bbAb95"
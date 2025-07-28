# Crypto pet care

## Project Description

**Crypto pet care** is a beginner-friendly Ethereum smart contract project implemented in Solidity. It simulates managing virtual pets on the blockchain where the contract owner can add pets, and anyone can feed them by recording the feeding time on-chain.

### Core Features

- **Add Pet:** Owner can add pets with a name and age.  
- **Feed Pet:** Anyone can feed a pet, updating the last-fed timestamp.  
- **View Pet Data:** Anyone can query pet details including last feeding time.

This project demonstrates basic smart contract data storage, access control, and events in Solidity, useful for learning blockchain development basics.

### Key Features

- **Access Control:** Only the contract owner can add new pets, ensuring secure management.  
- **Event Emission:** Emits events on pet addition and feeding for transparency and easy tracking.  
- **Data Persistence:** Stores pet details and feeding records immutably on the Ethereum blockchain.  
- **Public Readability:** Anyone can view pet data anytime, promoting transparency.  
- **Timestamp Logging:** Accurate tracking of the last feeding time using block timestamps.

### Future Scope

- **Multi-Owner Support:** Enable multiple owners or guardians for pets with role-based permissions.  
- **Pet Health Tracking:** Extend smart contract to log pet health info and automate care reminders.  
- **Tokenized Pets:** Introduce NFTs representing pets to enable trading or unique ownership.  
- **Decentralized Pet Marketplace:** Build a platform for trading, breeding, or adopting pets via blockchain.  
- **Mobile/Web Frontend:** Create user-friendly interfaces to interact with the contract outside Remix.  
- **Feeding Incentives:** Implement token rewards for users who regularly feed pets, encouraging engagement.  
- **Integration with IoT:** Connect pets with IoT devices for real-world health and activity data logged on-chain.

### How to Use

1. Open `Project.sol` in Remix IDE.  
2. Compile with Solidity version 0.8.x.  
3. Deploy the contract.  
4. Only the owner (deployer) can add pets using `addPet`.  
5. Anyone can call `feedPet` to update feeding time of a pet.  
6. Use `getPet` to read pet information.

*Created as a beginner blockchain smart contract project.*
contract address:-0xd9145CCE52D386f254917e481eB44e9943F39138

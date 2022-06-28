pragma solidity ^0.8.15;
import @openzeppelin/contracts/token/ERC721/ERC721.sol;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
contract AyushToken is ERC20{
    address public admin;
    constructor() ERC20('Ayush', 'ACX') {
        _mint(msg.sender, 10000 * 10 ** 18);
        admin = msg.sender;
    }
    function mint(address to, uint amount) external {
        _mint(to, amount);
    }
}
    

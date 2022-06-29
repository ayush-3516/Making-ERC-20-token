pragma solidity ^0.8.15;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract AyushToken is ERC20 {
    address public admin;

    constructor() ERC20("Ayush", "ACX") {
        _mint(msg.sender, 10000 * 10**18);
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, "only admin");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}

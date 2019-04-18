pragma solidity ^0.5.0;

contract SplitPayment {
    address owner;
    
    constructor(address _owner) public {
        owner = _owner;
    }
    
    function send(address payable[] memory to, uint[] memory amount) 
    payable 
    public 
    onlyOwner() 
    {
        require(to.length == amount.length, 'to and amount arrays must have the same length');
        for(uint i = 0; i < to.length; i++) {
            to[i].transfer(amount[i]);
        }
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, 'only the owner can send a transaction');
        _;
    }

}
pragma solidity ^0.6.0;

contract HotelRoom{
    address payable public owner;
    enum status {vacant,occupied}
    status currentstatus; 
    constructor() public {
        owner = msg.sender;
        currentstatus = status.vacant;

    }
    event occupy (address _occupant, uint _value);
    modifier onlyifvacant {
        require(currentstatus == status.vacant, "Currently occupied");
        _;
    }
    modifier costs(uint _amount){
        require(msg.value >= _amount, "Not enough ether");
        _;
    }
    receive() external payable onlyifvacant costs(2 ether){
        currentstatus = status.occupied;
        owner.transfer(msg.value);
        emit occupy(msg.sender, msg.value);

    }
}
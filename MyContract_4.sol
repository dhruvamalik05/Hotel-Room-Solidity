pragma solidity ^0.6.0;

contract MyContract_4 {
    uint[] public number = [1,2,3,4,5,6];
    address public owner;
    constructor() public {
        owner = msg.sender;
    }
    function iseven (uint _number) public view returns(bool){
        if(_number%2==0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    function isowner() public view returns(bool){
        if(msg.sender==owner)
        {
            return true;
        }
        else{
            return false;
        }
    }
    function counteven() public view returns (uint)
    {
        uint count = 0;
        for (uint i = 0; i < number.length ; i++)
        {
            if(iseven(number[i]))
            {
                count++;
            }
        }
        return count;
    }
}
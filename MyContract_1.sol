pragma solidity ^0.6.0;

contract MyContract{
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public mystring = "hello thois is my string";
    bytes32 public myBytes32 = "hello this is my string in bytes";

    address public myAddress = 0xA492275e49F4b229d16EC5A07edf9F67F7fE8476;
    
    struct Person{
        uint id;
        string name;
    }
    Person public person = Person(1,"Dhruva Malik");

    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
    function getmyUint() public view returns(uint){
        return myUint;
    }
}
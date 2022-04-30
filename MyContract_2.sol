pragma solidity ^0.6.0;

contract MyContract_2{
    uint[] public uintArray = [1,2,3];
    string[] public stringarr = ['Dhruva','Malik'];
    uint[][] public array2D = [[1,2,3],[2,3,4],[3,4,5]];
    function addValue (string memory _value) public{
        stringarr.push(_value);
    }
    function valueCount () public view returns(uint){
        return stringarr.length;
    }

}
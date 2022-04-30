pragma solidity ^0.6.0;
contract ownable {
    address owner;
    constructor() public{
        owner = msg.sender;
    }
    modifier onlyowner()
    {
        require(msg.sender==owner,"You must be an owner!");
        _;
    }

}
contract SecretVault{
    string secret;
    constructor (string memory _secret) public {
        secret = _secret;
    }
    function getsecret() public view returns (string memory)
    {
        return secret;
    }

}
contract MyContract_5 is ownable{
    address secretVault;

    constructor (string memory _secret) public {
        SecretVault _secretvault = new SecretVault(_secret);
        secretVault = address(_secretvault);
        super;
    }

    function getsecret() public view onlyowner returns (string memory)
    {
        SecretVault _secretvault = SecretVault(secretVault);

        return _secretvault.getsecret();
    }

}
pragma solidity ^0.6.0;

contract MyContract_3{
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint=>Book)) public mylibrary;

    struct Book {
        string title;
        string author;
    }
    constructor() public {
        names[1] = "adam";
        names[2] = "bat";

    }
    function addBook(uint _id, string memory _title, string memory _author  ) public
    {
        books[_id] = Book(_title, _author);
    }
    function makelibrary(uint _id, string memory _title, string memory _author) public
    {
        mylibrary[msg.sender][_id] = Book(_title, _author);
    }
}
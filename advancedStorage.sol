pragma solidity ^0.5.0;

contract AdvancedStorage {
    uint[] public ids;
    
    function add(uint _id) public {
        ids.push(_id);
    }
    
    function get(uint index) view public returns(uint) {
        return ids[index];
    }
    
    function getAll() view public returns(uint[] memory){
        return ids;
    }
    
    function length() view public returns (uint) {
        return ids.length;
    }
}
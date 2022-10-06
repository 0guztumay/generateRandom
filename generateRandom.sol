// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract generatingRandomWords{

string public generatedWord;
uint256 public generatedNumber;

    uint counter =1;

    // size is length of word
    function randomString() public  payable returns(string memory){
        bytes memory randomWord=new bytes(10);
        // since we have 26 letters
        bytes memory chars = new bytes(26);
        chars="abcdefghijklmnopqrstuvwxyz";
        for (uint i=0;i<10;i++){
            uint randomNumber=random(26);
            randomWord[i]=chars[randomNumber];
        }
        return generatedWord = string(randomWord);
    }

    function random(uint number) public payable returns(uint){
        counter++;
        return generatedNumber = uint(keccak256(abi.encodePacked(block.timestamp,block.difficulty,  
        msg.sender,counter))) % number;
    }
}
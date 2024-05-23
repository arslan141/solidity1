pragma solidity ^0.8.0;

contract ArrayManipulation {
    uint[] private dataArray;

    function remove(uint index) public {
        require(index < dataArray.length, "Index out of bounds");

        for (uint i = index; i < dataArray.length - 1; i++) {
            dataArray[i] = dataArray[i + 1];
        }

        dataArray.pop();
    }
}

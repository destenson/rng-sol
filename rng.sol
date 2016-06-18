/* This contract is deployed at 0x12a7a3805ffaa9adb1a7f83b0fabdff5b327080d with the ABI:
[
    {
        "constant": true,
        "inputs": [],
        "name": "last",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [
            {
                "name": "seed",
                "type": "uint256"
            }
        ],
        "name": "RandomNumberFromSeed",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [],
        "name": "RandomNumber",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "type": "function"
    },
    {
        "anonymous": false,
        "inputs": [
            {
                "indexed": false,
                "name": "random_number",
                "type": "uint256"
            }
        ],
        "name": "GeneratedNumber",
        "type": "event"
    }
]
*/

contract RNG {
    mapping (address => uint) nonces;
    uint public last;
    function RNG() { }
    function RandomNumber() returns(uint) {
        return RandomNumberFromSeed(uint(sha3(block.number))^uint(sha3(now))^uint(msg.sender)^uint(tx.origin));
    }
    function RandomNumberFromSeed(uint seed) returns(uint) {
        last = seed^(uint(sha3(block.blockhash(block.number),nonces[msg.sender]))*0x000b0007000500030001);
        GeneratedNumber(last);
        return last;
    }
    event GeneratedNumber(uint random_number);
}

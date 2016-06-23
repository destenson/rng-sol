# rng-sol

Solidity contract providing a (somewhat pseudo-) random number generator service. The current version is deployed at 0xaED5a41450B38FC0EA0F6F203a985653fE187d9c.

There is a function called `Guess(uint)` and an event called `RandomNumberGuessed(uint random_number, address guesser)` that announces if you're right. If you think you can predict or cause the `Random()` to have a certain value, feel free to deposit some ETH into the contract & call `Guess()` with the correct value to retrieve it.

There is also a one-time 10 Finney reward there for the first one who guesses correctly. If you are able to guess correctly, please file an Issue here. I would like rng.sol to be reliable enough to use securely. Thanks, good luck. :)


This contract is deployed at 0xaED5a41450B38FC0EA0F6F203a985653fE187d9c with the ABI:
`
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
                "name": "_guess",
                "type": "uint256"
            }
        ],
        "name": "Guess",
        "outputs": [
            {
                "name": "",
                "type": "bool"
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
    },
    {
        "anonymous": false,
        "inputs": [
            {
                "indexed": false,
                "name": "random_number",
                "type": "uint256"
            },
            {
                "indexed": false,
                "name": "guesser",
                "type": "address"
            }
        ],
        "name": "RandomNumberGuessed",
        "type": "event"
    }
]
`

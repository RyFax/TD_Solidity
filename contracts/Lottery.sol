pragma solidity 0.8.7;

contract Lottery {

    // Les variables sont déjà pré-faite pour vous aider
    // Vous pouvez en ajouter ou les modifier si vous le souhaitez
    address[] public participants;
    bool public isLotteryClosed = false;
    uint startTime = block.timestamp;
    mapping(address => bool) isParticipate;

    constructor() {}

    function participate() public {
        // Participer au tirage au sort
        // (Insertion dans la liste de participants, avec les require qui faut)

        // Consignes : 
        //      - On ne peut y participer qu'une seule fois
        //      - La lotterie doit être ouverte
    }

    function pickWinner() public returns (address) {
        // Tirage au sort d'une addresse dans "participants"

        // Consignes :
        //      - La lotterie doit être ouverte
        //      - La lotterie se fermera après le tirage
        //      - (bonus) Le tirage au sort ne peut s'effectuer qu'après 60 secondes du début
    } 


    // Génération d'un nombre "aléatoire"
    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants)));
    }

}

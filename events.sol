contract myEvent{
    uint[] numbers;
    
    event added(address indexed _by, uint val);
    
    function addNumber(uint _val) external{
        numbers.push(_val);
        emit added(msg.sender, _val);
    }
}


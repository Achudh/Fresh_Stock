pragma solidity ^0.4.0;
contract stockDetails {

    uint8 potato;
    uint8 tomato;
    uint8 carrot;
    uint8 capsicum;
    uint8 cabbage;
    uint8 pumpkin;
    uint8 peas;
    
    string storageId;

    function addPotato(uint8 _potato,string _storageId) public {
        potato= _potato;
    }
    function addTomato(uint8 _tomato,string _storageId) public {
        tomato= _tomato;
    }
        function addcarrot(uint8 _carrot,string _storageId) public {
        carrot= _carrot;
    }
        function addCapsicum(uint8 _capsicum,string _storageId) public {
        capsicum= _capsicum;
    }
        function addCabbage(uint8 _cabbage,string _storageId) public {
        cabbage= _cabbage;
    }
        function addPumpkin(uint8 _pumpkin,string _storageId) public {
        pumpkin= _pumpkin;
    }
        function addPeas(uint8 _peas,string _storageId) public {
        peas= _peas;
    }
//potato
       function updatePotato(uint8 _potato,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        potato=potato+_potato;
            
        }
    }

 function servePotato(uint8 _numberOfpotatoToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        potato=potato-_numberOfpotatoToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalancePotato) {
        return potato;
    }
    
//tomato
       function updateTomato(uint8 _tomato,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        tomato=tomato+_tomato;
            
        }
    }

 function serveTomato(uint8 _numberOftomatoToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        tomato=tomato-_numberOftomatotoToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalanceTomato) {
        return tomato;
    }
    
//carrot
       function updateCarrot(uint8 _carrot,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        carrot=carrot+_carrot;
            
        }
    }

 function servePotato(uint8 _numberOfcarrotToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        carrot=carrot-_numberOfcarrotToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalanceCarrot) {
        return carrot;
    }
//capsicum
       function updateCapsicum(uint8 _capsicum,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        capsicum=capsicum+_capsicum;
            
        }
    }

 function serveCapsicum(uint8 _numberOfcapsicumToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        capsicum=capsicum-_numberOfcapsicumToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalanceCapsicum) {
        return _capsicum;
    }

//cabbage
       function updateCabbage(uint8 _cabbage,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        cabbage=cabbage+_cabbage;
            
        }
    }

 function servePotato(uint8 _numberOfcabbageToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        cabbage=cabbage-_numberOfcabbageToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalanceCabbage) {
        return cabbage;
    }
//pump       
function updatePumpkin(uint8 _pumpkin,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        pumpkin=pumpkin+_pumpkin;
            
        }
    }

 function servePumpkin(uint8 _numberOfpumpkinToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        pumpkin=pumpkin-_numberOfpumpkinToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalancePumpkin) {
        return pumpkin;
    }
//peas
       function updatepeas(uint8 _peas,string _storageId) public {
        if(keccak256(storageId)==keccak256(_storageId))
        {
        peas=potato+_peas;
            
        }
    }

 function servePeas(uint8 _numberOfpeasToServ,string _storageId) public {
      if(keccak256(storageId)==keccak256(_storageId))
        {
        peas=peas-_numberOfpeasToServ;}
    }
    
    
 function getDetails(string _storageId) view returns(uint8 _BalancePeas) {
        return peas;
    }
}

// // Ionic Starter App

// // angular.module is a global place for creating, registering and retrieving Angular modules
// // 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// // the 2nd parameter is an array of 'requires'
// // 'starter.services' is found in services.js
// // 'starter.controllers' is found in controllers.js
angular.module('app', ['ionic', 'app.controllers', 'app.routes', 'app.services', 'app.directives','firebase'])
.config(function($ionicConfigProvider) {
    //Added config
    //$ionicConfigProvider.views.maxCache(5);
    $ionicConfigProvider.scrolling.jsScrolling(false);
    $ionicConfigProvider.tabs.position('bottom'); // other values: top
})
.run(function($ionicPlatform,$rootScope) {

    $rootScope.extras = false;

  $ionicPlatform.ready(function() {
    // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    // for form inputs)
    if (window.cordova && window.cordova.plugins && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
      cordova.plugins.Keyboard.disableScroll(true);
    }
    if (window.StatusBar) {
      // org.apache.cordova.statusbar required
      StatusBar.styleDefault();
    }
  });
})

var Tx     = require('ethereumjs-tx')
const Web3 = require('web3')
const web3 = new Web3('https://rinkeby.infura.io/v3/49aa3990915b4e7fafeddd7eff59b287')

const account1 = '0x59b26b336c18e32d25c80a0dead91b3ebdb76691' // Your account address 1
const account2 = '0xedf1d5e55d1b04acbb2402888d826679c265e1f9' // Your account address 2

const privateKey1 = Buffer.from('0x96358870deb13d259bc3753b577ec33f368ec1e8649130cef6c996b19c2d7272', 'hex')
const privateKey2 = Buffer.from('0x51537b81615c1fb31c65e3e27ab96bf42a99593068bbaff49f2f4c4baae0cc84', 'hex')

web3.eth.getTransactionCount(account1, (err, txCount) => {
  // Build the transaction
  const txObject = {
    nonce:    web3.utils.toHex(txCount),
    to:       account2,
    value:    web3.utils.toHex(web3.utils.toWei('0.1', 'ether')),
    gasLimit: web3.utils.toHex(21000),
    gasPrice: web3.utils.toHex(web3.utils.toWei('10', 'gwei'))
  }

  // Sign the transaction
  const tx = new Tx(txObject)
  tx.sign(privateKey1)

  const serializedTx = tx.serialize()
  const raw = '0x' + serializedTx.toString('hex')

  // Broadcast the transaction
  web3.eth.sendSignedTransaction(raw, (err, txHash) => {
    console.log('txHash:', txHash)
    // Now go check etherscan to see the transaction!
  })
})
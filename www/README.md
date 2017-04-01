# NOTE:
 Create a new firebase project [here.] (https://console.firebase.google.com/)

#### Things to replace
      1. In the index.html,replace the firebase config.
      2. In services.js, replace the projectId with your firebase product id.

Please read the complete tutorial series [here.](http://www.arjunsk.com/tag/firebase/) 

<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyCVhCD2kKS2yghNZdSHSLX3OgyqnWKaKeE",
    authDomain: "ionic-shopping-cart-f3596.firebaseapp.com",
    databaseURL: "https://ionic-shopping-cart-f3596.firebaseio.com",
    projectId: "ionic-shopping-cart-f3596",
    storageBucket: "ionic-shopping-cart-f3596.appspot.com",
    messagingSenderId: "31294615149"
  };
  firebase.initializeApp(config);
</script>

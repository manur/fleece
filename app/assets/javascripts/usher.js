$(function() {
  jug = window.jug;

  jug.on("connect", function(){ 
    console.log("connect");
  });

  jug.on("disconnect", function(){ 
    console.log("disconnect");
  });

  // Once we call subscribe, Juggernaut tries to connnect.
  jug.subscribe("channel1", function(data){
    console.log("Got data: " + data);
  });
});

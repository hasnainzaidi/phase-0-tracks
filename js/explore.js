// declare a variable string
// declare function reverse(string){}
// declare a blank target string
// create a for loop with starting counter = length of the string; 
// condition is counter > 0; counter --
// add string[counter] to the target string
// print the target string

function reverse(string){
  var targetString = "";
  for(var i = string.length-1; i > -1; i--){
    targetString += string[i];
  }
  return targetString;
}

// Driver code:
var nameCode = reverse("Hasnain");

i = 0;

if(i == 1){ 
  console.log(nameCode);
}else{
  console.log("Not an agent");
}

function reverse(str) {
  // Use the split() method to return a new array
  var splitString = str.split(""); 

  // Use the reverse() method to reverse the new created array
  var reverseArray = splitString.reverse(); 
  
  // Use the join() method to join all elements of the array into a string
  var joinArray = reverseArray.join("");
    
  // Return the reversed string
  return joinArray; 
}
 
var backword = reverse("hello");

if (1 == 1) {
    console.log(backword);
}
var phrase = ["long phrase", "longest phrase", "longer phrase"];
var anotherPhrase = ["today", "tomorrow", "next month"];


// create function that takes an array of phrases
// iterate through the array and compare the length of one index to next
// keep track of index of longest phrase, update only if next phrase is longer.
function longestPhrase(phrase) {
  var longPhrase_index = 0;

  for(var i = 0; i < phrase.length; i++) {   // compares each array index and updates index only if longer
    if (phrase[longPhrase_index].length < phrase[i].length) {
      longPhrase_index = i;
    }
  }

  console.log(phrase[longPhrase_index]);
}



var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
var object3 = {name: "Bob", age: 45};

// iterate through object1 and check for match of keys with object2, when keys match check for values match,
// return true if match of key and value, otherwise return false.
function keyValueMatch(obj1, obj2) {
  for (var key1 in obj1) {
    for (var key2 in obj2) {
      if (key1 == key2) {       // check keys match
        if (obj1[key1] == obj2[key2]) {     // check values match
          console.log(key2 + " => " + obj2[key2]);
          return true;
        }
      }
    }  
  }
  return false;
}


// create function that takes an input for an array length
// iterate through, make new word with random letters from string index and push to array
function testData(array_length) {
    var word = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    var new_array = [];

  for(var i = 0; i < array_length; i++) {
    
      for(var j = 0; j < Math.floor(Math.random() * 10); j++) {     // set random word length 1-10
          word += possible.charAt(Math.floor(Math.random() * possible.length));
      }
   
      new_array.push(word);
      word = "";      // reset for next word in array
    }
    return new_array;
}




// Driver code:

// Release 0
longestPhrase(phrase);
longestPhrase(anotherPhrase);

// Release 1
keyValueMatch(object1, object2);
keyValueMatch(object1, object3);

// Release 2

for (var i = 0; i < 10; i++) {
  new_array = testData(10);
  console.log(new_array);
  longestPhrase(new_array);
}
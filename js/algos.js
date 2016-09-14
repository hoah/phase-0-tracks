var phrase = ["long phrase", "longest phrase", "longer phrase"];
var anotherPhrase = ["today", "tomorrow", "next month"];

function longestPhrase(phrase) {
  var longPhrase_index = 0;

  for(var i = 0; i < phrase.length; i++) {
    if (phrase[longPhrase_index].length < phrase[i].length) {
      longPhrase_index = i;
    }
  }

  console.log(phrase[longPhrase_index]);
}


longestPhrase(phrase);
longestPhrase(anotherPhrase);
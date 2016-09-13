var colors = ["blue", "green", "red", "yellow"];
var names = ["Ed", "Bob", "Joe", "Ann"];

colors.push("grey");
names.push("Fluffy");


console.log(colors);
console.log(names);


var horse = {};

for(var i = 0; i < names.length; i++) {
  horse[names[i]] = colors[i];
}

console.log(horse);
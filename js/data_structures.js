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

function Car(types, color, use){
  this.types = types;
  this.color = color;
  this.use = use;

  this.sound = function() { console.log("Vroom, Vroom"); };
}

var newCar = new Car("Honda", "White", "personal");

console.log(newCar);

newCar.sound();

var anotherCar = new Car("Subaru", "Red", "fun");

console.log(anotherCar);

anotherCar.sound();
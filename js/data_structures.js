var colors = ["red", "blue", "green", "purple"];
var names = ["jack", "ed", "steve", "tim"];

colors.push("yellow");
names.push("will");


// empty horse object literal 
// loops through colors and names array and sets the keys and values
// and pushes to horses object
var horses = {};
for(var i = 0; i < names.length; i++){
  horses[names[i]] = colors[i];
};

console.log(horses);

// creates a car constructor function
function Car(model, year, awd){
  this.model = model;
  this.year = year;
  this.awd = awd;

  // prints out message when starting car
  this.startEngine = function(){
    console.log("Vroom vroom");
  }
}

var tesla = new Car("Tesla", 2017, false);
console.log(tesla);
tesla.startEngine();

var ford = new Car("Ford", 2012, false);
console.log(ford);
ford.startEngine();

var mazda = new Car("Mazda", 2020, true);
console.log(mazda);
mazda.startEngine();
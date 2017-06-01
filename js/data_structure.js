var horseNames=["Ed","Sea Biscuit","Black Beauty","Bob"];
var horseColors=["blue", "red","yellow","green"];
​
horseColors.push("purple");
horseNames.push("Buttercup");
​
function pair(horseNames,horseColors){
var horses={};
for(i=0;i<horseNames.length;i++){
 horses[names[i]]=colors[i]
}
​
for(i = 0; i < horseColors.length;i++) {
 console.log(horseColors[i])
}
}
​
console.log(pair(horseNames,horseColors));

// In this context, 'this' refers to
  // the individual dog we're making

// function Dog(name, age, isGoodDog) {
//   console.log("Our new dog:", this);

//   this.name = name;
//   this.age = age;
//   this.isGoodDog = isGoodDog;

// var anotherDog = new Dog("Duchess", 8, true);
// console.log(anotherDog);


function Car(make,year,isRunning){
 this.make=make;
 this.year=year;
 this.isRunning=isRunning;
 this.rev=function(){console.log("Vroom!")};
};

console.log("Lets build a new car!");
var newCar1= new Car("Ford",2017,true);
console.log(newCar1);
console.log("CAR CREATION COMPLETE");
console.log("________________");

console.log("Let's build Gwynne's first car!");
var newCar2 = new Car("Toyota", 2005, true);
console.log(newCar2);
console.log("CAR CREATION COMPLETE");
console.log("________________");

console.log("Let's build Ida's first car!")
var newCar3 = new Car("Suburu", 2016, true);
console.log(newCar3);
console.log("CAR CREATION COMPLETE");
console.log("________________");

/// RELEASE 3

// for (var prop in Car) {
//   console.log(`Car.${prop} = ${Car[prop]}`);
// }

var iterate = "";
var x;
for (x in newCar1) {
  console.log(iterate += newCar1[x]);
}
import React, { useState, useEffect } from "react";
export * from "react";

console.log("Hello, JavaScript!");
console.log(useEffect);

export const A = "123";
export let B = "456";

function add(a, b) {
  console.log("Adding:", a, b);
  return a + b;
}

/**
 * @example Comment
 */
class Animal {
  constructor(name) {
    this.name = name;
  }

  speak() {
    console.log(`${this.name} makes a noise.`);
  }
}

class Dog extends Animal {
  constructor(name, breed) {
    super(name);
    this.breed = breed;
  }

  speak() {
    console.log(`${this.name} barks.`);
  }

  static info() {
    return "Dogs are domesticated mammals, not natural wild animals.";
  }
}

const myDog = new Dog("Rex", "German Shepherd");

export async function fetchData(url) {
  try {
    const response = await fetch(url);
    const data = await response.json();
    console.log(data);
    return data;
  } catch (error) {
    console.error("Error fetching data:", error);
  }
}

const add = (a, b) => a + b;

myDog.speak();
console.log(`Breed: ${myDog.breed}`);
console.log(`Addition: ${add(5, 3)}`);

const promise = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("Promise resolved!");
  }, 1000);
});

promise
  .then((message) => {
    console.log(message);
  })
  .catch((error) => {
    console.error(error);
  });

for (let i = 0; i < 5; i++) {
  if (i % 2 === 0) {
    console.log(`${i} is even.`);
  } else {
    console.log(`${i} is odd.`);
  }
}

const fruits = ["Apple", "Banana", "Cherry"];
const person = {
  firstName: "John",
  lastName: "Doe",
  age: 30,
  greet() {
    console.log(`Hello, my name is ${this.firstName} ${this.lastName}.`);
  },
};

fruits.forEach((fruit) => console.log(fruit));
person.greet();

const { firstName, age } = person;
console.log(`Name: ${firstName}, Age: ${age}`);

const isAdult = age >= 18 ? "Yes" : "No";
console.log(`Is adult: ${isAdult}`);

export default Dog;

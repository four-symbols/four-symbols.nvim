// TypeScript Language Feature Coverage Example

// 1. Basic Types
let isDone: boolean = false;
let decimal: number = 6;
let color: string = "blue";
let list: number[] = [1, 2, 3];
let tuple: [string, number];
tuple = ["hello", 10]; // Tuple example

// 2. Enum
enum Color {
  Red,
  Green,
  Blue,
}
let c: Color = Color.Green;

// 3. Any
let notSure: any = 4;
notSure = "maybe a string instead";
notSure = false;

// 4. Void, Null, Undefined
function warnUser(): void {
  console.log("This is a warning message");
}
let u: undefined = undefined;
let n: null = null;

// 5. Type Assertions
let someValue: any = "this is a string";
let strLength: number = (someValue as string).length;

// 6. Interfaces
interface LabelledValue {
  label: string;
  size?: number; // Optional property
  readonly id: number; // Readonly property
}

function printLabel(labelledObj: LabelledValue): void {
  console.log(labelledObj.label);
}

// 7. Functions
function add(x: number, y: number): number {
  return x + y;
}

let myAdd: (baseValue: number, increment: number) => number = function (x, y) {
  return x + y;
};

// 8. Literal Types and Union Types
type Direction = "North" | "South" | "East" | "West";
let direction: Direction = "North";

function move(dir: Direction): void {
  console.log("Moving", dir);
}

// 9. Intersection Types
interface ErrorHandling {
  success: boolean;
  error?: { message: string };
}
interface ArtworksData {
  artworks: { title: string }[];
}
type ArtworksResponse = ArtworksData & ErrorHandling;

// 10. Classes and Inheritance
class Animal {
  name: string;
  protected sound: string;

  constructor(name: string, sound: string) {
    this.name = name;
    this.sound = sound;
  }

  public speak(): void {
    console.log(`${this.name} says ${this.sound}`);
  }
}

class Dog extends Animal {
  constructor(name: string) {
    super(name, "woof");
  }

  public fetch(): void {
    console.log(`${this.name} is fetching!`);
  }
}

let dog: Dog = new Dog("Buddy");
dog.speak();
dog.fetch();

// 11. Generics
function identity<T>(arg: T): T {
  return arg;
}

let output = identity<string>("myString");

// 12. Type Aliases
type NameOrID = string | number;

// 13. Type Guards
function isString(x: any): x is string {
  return typeof x === "string";
}

// 14. Mapped Types
type Readonly<T> = {
  readonly [P in keyof T]: T[P];
};

// 15. Conditional Types
type IsString<T> = T extends string ? "Yes" : "No";

// 16. Modules and Namespaces
namespace Geometry {
  export function calculateArea(radius: number): number {
    return Math.PI * radius * radius;
  }
}

// 17. Decorators (requires experimentalDecorators in tsconfig)
function sealed(constructor: Function) {
  Object.seal(constructor);
  Object.seal(constructor.prototype);
}

@sealed
class SealedClass {}

// 18. Asynchronous Programming (async/await)
async function fetchData(url: string): Promise<string> {
  const response = await fetch(url);
  const data = await response.text();
  return data;
}

// 19. Type Casting and Type Assertions
let someNumber: unknown = "123";
let num = someNumber as number;

// 20. Optional Chaining and Nullish Coalescing
interface User {
  id: number;
  name?: string;
  address?: {
    city?: string;
  };
}

let user: User = { id: 1 };
let city = user?.address?.city ?? "Unknown City";

// 21. Template Literals and Tagged Templates
function template(strings: TemplateStringsArray, ...values: any[]) {
  return strings.reduce((acc, str, i) => `${acc}${str}${values[i] || ""}`, "");
}

const result = template`Hello, ${user.name ?? "Guest"}!`;

// 22. Symbol and BigInt
const uniqueId = Symbol("id");
let bigIntValue: bigint = 100n;

// 23. Indexed Access Types
type Person = { name: string; age: number };
type Age = Person["age"]; // number

// 24. Keyof Operator
type PersonKeys = keyof Person; // "name" | "age"

// 25. Infer and Conditional Types
type Flatten<T> = T extends Array<infer U> ? U : T;
type Str = Flatten<string[]>; // Str is string
type M = Flatten<HTMLElement | null>;

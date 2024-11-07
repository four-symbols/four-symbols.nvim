// Rust Language Feature Coverage Example

// 1. Basic Types and Variables
fn basic_types() {
    let is_active: bool = true;
    let count: i32 = 42;
    let hex: u32 = 0xff;
    let name: &str = "Rust";
    let arr: [i32; 3] = [1, 2, 3];
    let tuple: (i32, f64, &str) = (42, 3.14, "hello");

    println!(
        "Boolean: {}, Integer: {}, Hex: {}, String: {}",
        is_active, count, hex, name
    );
    println!("Array: {:?}", arr);
    println!("Tuple: {:?}", tuple);
}

// 2. Functions and Control Flow
fn add(x: i32, y: i32) -> i32 {
    x + y
}

fn control_flow(x: i32) {
    if x > 10 {
        println!("x is greater than 10");
    } else if x == 10 {
        println!("x is exactly 10");
    } else {
        println!("x is less than 10");
    }

    for i in 0..5 {
        println!("for loop: {}", i);
    }

    let mut count = 0;
    while count < 5 {
        println!("while loop: {}", count);
        count += 1;
    }

    let result = match x {
        0 => "zero",
        1..=9 => "single digit",
        10 => "ten",
        _ => "other",
    };
    println!("Match result: {}", result);
}

// 3. Structs, Enums, and Pattern Matching
#[derive(Debug)]
struct Person {
    name: String,
    age: u8,
}

impl Person {
    fn new(name: &str, age: u8) -> Person {
        Person {
            name: name.to_string(),
            age,
        }
    }

    fn greet(&self) {
        println!("Hello, my name is {}", self.name);
    }
}

#[derive(Debug)]
enum Direction {
    North,
    South,
    East,
    West,
}

fn pattern_matching(dir: Direction) {
    match dir {
        Direction::North => println!("Heading North"),
        Direction::South => println!("Heading South"),
        Direction::East => println!("Heading East"),
        Direction::West => println!("Heading West"),
    }
}

// 4. Generics
fn largest<T: PartialOrd>(list: &[T]) -> &T {
    let mut largest = &list[0];
    for item in list {
        if item > largest {
            largest = item;
        }
    }
    largest
}

// 5. Traits
trait Greet {
    fn greet(&self) -> String;
}

impl Greet for Person {
    fn greet(&self) -> String {
        format!("Hello, my name is {}.", self.name)
    }
}

// 6. Error Handling with Result and Option
fn divide(a: f64, b: f64) -> Result<f64, String> {
    if b == 0.0 {
        Err("Cannot divide by zero".to_string())
    } else {
        Ok(a / b)
    }
}

fn option_example(name: Option<&str>) {
    match name {
        Some(n) => println!("Hello, {}", n),
        None => println!("No name provided"),
    }
}

// 7. Collections and Iterators
fn collections_and_iterators() {
    let mut vec = vec![1, 2, 3];
    vec.push(4);
    println!("Vector: {:?}", vec);

    for value in vec.iter() {
        println!("Value: {}", value);
    }

    let sum: i32 = vec.iter().sum();
    println!("Sum: {}", sum);
}

// 8. Closures
fn closures_example() {
    let add_one = |x: i32| x + 1;
    println!("5 + 1 = {}", add_one(5));

    let multiply = |x: i32, y: i32| -> i32 { x * y };
    println!("3 * 4 = {}", multiply(3, 4));
}

// 9. Concurrency (Threads)
use std::thread;
use std::time::Duration;

fn concurrency_example() {
    let handle = thread::spawn(|| {
        for i in 1..5 {
            println!("Spawned thread: {}", i);
            thread::sleep(Duration::from_millis(500));
        }
    });

    for i in 1..5 {
        println!("Main thread: {}", i);
        thread::sleep(Duration::from_millis(300));
    }

    handle.join().unwrap();
}

// 10. Modules and Privacy
mod my_module {
    pub fn public_function() {
        println!("This is a public function.");
    }

    fn private_function() {
        println!("This is a private function.");
    }
}

fn module_example() {
    my_module::public_function();
    // my_module::private_function(); // This line would cause a compilation error
}

// 11. Ownership and Borrowing
fn ownership_and_borrowing() {
    let s1 = String::from("hello");
    let s2 = s1; // s1 is moved to s2, and s1 is no longer valid
    println!("s2: {}", s2);

    let s3 = String::from("world");
    let s4 = &s3; // s4 borrows s3
    println!("s3: {}, s4: {}", s3, s4);
}

// 12. Asynchronous Programming (async/await requires tokio or async-std crate)
/*
use tokio::time::{sleep, Duration};

async fn async_function() {
    println!("Async function start");
    sleep(Duration::from_secs(1)).await;
    println!("Async function end");
}
*/

fn main() {
    basic_types();
    println!("Add result: {}", add(5, 3));
    control_flow(10);

    let person = Person::new("Alice", 30);
    person.greet();

    pattern_matching(Direction::North);

    let numbers = vec![10, 20, 5, 3, 99];
    println!("Largest number: {}", largest(&numbers));

    println!("{}", person.greet());

    match divide(10.0, 2.0) {
        Ok(result) => println!("Division result: {}", result),
        Err(err) => println!("Error: {}", err),
    }

    option_example(Some("Bob"));
    option_example(None);

    collections_and_iterators();
    closures_example();
    concurrency_example();
    module_example();
    ownership_and_borrowing();
}

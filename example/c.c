// C Language Feature Coverage Example

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// 1. Basic Types and Variables
void basic_types() {
    int integer = 42;
    float floating = 3.14f;
    double dbl = 3.14159;
    char character = 'A';
    char str[] = "Hello, C!";
    
    printf("Integer: %d\n", integer);
    printf("Float: %.2f\n", floating);
    printf("Double: %.5f\n", dbl);
    printf("Character: %c\n", character);
    printf("String: %s\n", str);
}

// 2. Control Structures
void control_structures(int x) {
    if (x > 10) {
        printf("x is greater than 10\n");
    } else if (x == 10) {
        printf("x is exactly 10\n");
    } else {
        printf("x is less than 10\n");
    }

    for (int i = 0; i < 5; i++) {
        printf("for loop: %d\n", i);
    }

    int count = 0;
    while (count < 5) {
        printf("while loop: %d\n", count);
        count++;
    }

    do {
        printf("do-while loop: %d\n", count);
        count--;
    } while (count > 0);
}

// 3. Functions and Recursion
int factorial(int n) {
    if (n <= 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

// 4. Pointers and Memory Allocation
void pointers_and_memory() {
    int value = 10;
    int *ptr = &value;
    printf("Value: %d, Address: %p\n", *ptr, (void*)ptr);

    int *dynamic_array = malloc(5 * sizeof(int));
    for (int i = 0; i < 5; i++) {
        dynamic_array[i] = i * i;
        printf("dynamic_array[%d] = %d\n", i, dynamic_array[i]);
    }
    free(dynamic_array);
}

// 5. Structures and Typedef
typedef struct {
    char name[50];
    int age;
} Person;

void print_person(Person p) {
    printf("Name: %s, Age: %d\n", p.name, p.age);
}

// 6. Arrays and Strings
void arrays_and_strings() {
    int arr[5] = {1, 2, 3, 4, 5};
    char str[] = "Hello";
    printf("Array elements: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\nString: %s\n", str);

    char str1[10] = "Hello";
    char str2[10] = "World";
    strcat(str1, str2);
    printf("Concatenated string: %s\n", str1);
}

// 7. Enumerations
enum Direction { NORTH, SOUTH, EAST, WEST };

void print_direction(enum Direction dir) {
    switch (dir) {
        case NORTH:
            printf("Heading North\n");
            break;
        case SOUTH:
            printf("Heading South\n");
            break;
        case EAST:
            printf("Heading East\n");
            break;
        case WEST:
            printf("Heading West\n");
            break;
    }
}

// 8. Macros and Preprocessor Directives
#define PI 3.14159
#define SQUARE(x) ((x) * (x))

void macros_example() {
    printf("PI: %.5f\n", PI);
    printf("Square of 5: %d\n", SQUARE(5));
}

// 9. File I/O
void file_io_example() {
    FILE *file = fopen("test.txt", "w");
    if (file) {
        fprintf(file, "Hello, file!\n");
        fclose(file);
    }

    file = fopen("test.txt", "r");
    if (file) {
        char line[100];
        while (fgets(line, sizeof(line), file)) {
            printf("File content: %s", line);
        }
        fclose(file);
    }
}

// 10. Math Library
void math_library_example() {
    double x = 9.0;
    printf("Square root of %.2f is %.2f\n", x, sqrt(x));
    printf("Power of 2^3 is %.2f\n", pow(2, 3));
}

// 11. Bitwise Operations
void bitwise_operations() {
    int a = 5;  // 0101 in binary
    int b = 3;  // 0011 in binary
    printf("Bitwise AND: %d\n", a & b);
    printf("Bitwise OR: %d\n", a | b);
    printf("Bitwise XOR: %d\n", a ^ b);
    printf("Left Shift: %d\n", a << 1);
    printf("Right Shift: %d\n", a >> 1);
}

// 12. Function Pointers
void say_hello() {
    printf("Hello!\n");
}

void function_pointers() {
    void (*func_ptr)() = say_hello;
    func_ptr();
}

// 13. Command-line Arguments
void command_line_arguments(int argc, char *argv[]) {
    printf("Number of arguments: %d\n", argc);
    for (int i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }
}

// Main function to test all features
int main(int argc, char *argv[]) {
    printf("=== Basic Types ===\n");
    basic_types();

    printf("\n=== Control Structures ===\n");
    control_structures(10);

    printf("\n=== Factorial Function (Recursion) ===\n");
    printf("Factorial of 5: %d\n", factorial(5));

    printf("\n=== Pointers and Memory Allocation ===\n");
    pointers_and_memory();

    printf("\n=== Structures and Typedef ===\n");
    Person p = {"Alice", 30};
    print_person(p);

    printf("\n=== Arrays and Strings ===\n");
    arrays_and_strings();

    printf("\n=== Enumerations ===\n");
    print_direction(NORTH);

    printf("\n=== Macros and Preprocessor Directives ===\n");
    macros_example();

    printf("\n=== File I/O ===\n");
    file_io_example();

    printf("\n=== Math Library ===\n");
    math_library_example();

    printf("\n=== Bitwise Operations ===\n");
    bitwise_operations();

    printf("\n=== Function Pointers ===\n");
    function_pointers();

    printf("\n=== Command-line Arguments ===\n");
    command_line_arguments(argc, argv);

    return 0;
}

## Assignment: **Float Arithmetic Functions and a Makefile**

You’ll write a tiny arithmetic library using floats, then use it in a program.
Finally, you’ll build a simple Makefile to compile everything.

### Learning Goals

* Write simple `float` functions
* Use function prototypes in a header
* Compile/link multiple `.c` files
* Create and use a basic Makefile


## 1. Setup

Open this repository in **GitHub Codespaces**.

You will see:

**You will edit:**

* `arith_utils.c`
* `main.c`
* `Makefile` (at the end)

**Don't edit:**

* `arith_utils.h` (provided prototypes)

### Files included

```
.
├── main.c
├── arith_utils.c
└── arith_utils.h
```

---

## 2. Your Task

### Part A: Implement Float Arithmetic Functions

In `arith_utils.c`, implement **four** functions:

1. `float add(float a, float b);`
2. `float subtract(float a, float b);`
3. `float multiply(float a, float b);`
4. `float divide(float a, float b);`

**Rules**

* All inputs and outputs are `float`
* If `b == 0` in `divide`, return `0.0f`
* Keep the functions small and clean.

---

## 3. Starter Code

### `arith_utils.h` (provided — do not change)

```c
#ifndef ARITH_UTILS_H
#define ARITH_UTILS_H

float add(float a, float b);
float subtract(float a, float b);
float multiply(float a, float b);
float divide(float a, float b);

#endif
```

### `arith_utils.c` (you complete it)

```c
#include "arith_utils.h"

// TODO: implement each function

float add(float a, float b) {
    // TODO
}

float subtract(float a, float b) {
    // TODO
}

float multiply(float a, float b) {
    // TODO
}

float divide(float a, float b) {
    // TODO
    // if b == 0 return 0.0f
}
```

### `main.c` (you complete)

```c
#include <stdio.h>
#include "arith_utils.h"

int main(void) {
    float x, y;

    // TODO: prompt user for two floats
    printf("Enter first number: ");
    scanf("%f", &x);

    printf("Enter second number: ");
    scanf("%f", &y);

    printf("\nResults:\n");
    printf("%.2f + %.2f = %.2f\n", x, y, add(x, y));
    printf("%.2f - %.2f = %.2f\n", x, y, subtract(x, y));
    printf("%.2f * %.2f = %.2f\n", x, y, multiply(x, y));

    if (y == 0.0f) {
        printf("%.2f / %.2f = undefined (division by zero)\n", x, y);
    } else {
        printf("%.2f / %.2f = %.2f\n", x, y, divide(x, y));
    }

    return 0;
}
```

---

## 4. Manual Compilation (for testing)

Until your Makefile is done, compile like this:

```bash
gcc -Wall -Wextra -pedantic main.c arith_utils.c -o my_program
```

Run:

```bash
./my_program
```

---

## 5. **Makefile (Required Final Step)**

Create a file named `Makefile` in the root of the repo.

Your Makefile must support:

1. `make` → builds the program
2. `make run` → builds (if needed) and runs
3. `make clean` → removes the executable

### Makefile Template 

Please complete the my_program rule (all of the other rules are complete!

```make
CFLAGS = -Wall -Wextra -pedantic

all: my_program

my_program:
	gcc $(CFLAGS) 

run: all
	./my_program

clean:
	rm -f my_program
```

Test it:

```bash
make
make run
make clean
```

---

## 6. Submission 

1. Open **Source Control** in the editor (third icon from the top)
2. Stage:

   * `main.c`
   * `arith_utils.c`
   * `Makefile`
3. Commit message:
   `Completed float arithmetic library + Makefile`
4. Sync / Push
5. Submit repo URL on Blackboard

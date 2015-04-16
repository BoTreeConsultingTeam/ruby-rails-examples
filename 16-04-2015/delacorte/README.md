**Delacorte Number**

**What is a Delacorte Number?**

Take an m × n rectangle and divide it into an array of unit cells. Then number the cells, in any order you wish, from 1 to mn. For example, if your rectangle is 2 × 3, it might look like this after you've numbered it:

| 4 | 1 | 3 |
|---|---|---|
| 6 | 5 | 2 |

The Delacorte number is an integer-valued property of such a rectangle. It is computed as follows.

For each distinct pair of integers (a, b) in the rectangle, calculate Da,b using the formula

D(a, b) = gcd(a, b) × distance(a, b)

where gcd(a, b) is the greatest common divisor of integers a and b, and distance(a, b) is the shortest physical distance (within the rectangle) from integer a to integer b.

The Delacorte number for the rectangle is the sum of all the D(a, b).

For example, for the rectangle above the calculation of its Delacorte number looks like this:


|a |  b | gcd(a, b) |  distance(a, b)   | D(a, b)|
|--|----|-----------|-------------------|--------|
|1 |  2 |  1        | 2                 | 2      |
|1 |  3 |  1        | 1                 | 1      |
|1 |  4 |  1        | 1                 | 1      |
|1 |  5 |  1        | 1                 | 1      |
|1 |  6 |  1        | 2                 | 2      |
|2 |  3 |  1        | 1                 | 1      |
|2 |  4 |  2        | 3                 | 6      |
|2 |  5 |  1        | 1                 | 1      |
|2 |  6 |  2        | 2                 | 4      |
|3 |  4 |  1        | 2                 | 2      |
|3 |  5 |  1        | 2                 | 2      |
|3 |  6 |  3        | 3                 | 9      |
|4 |  5 |  1        | 2                 | 2      |
|4 |  6 |  2        | 2                 | 2      |
|5 |  6 |  1        | 1                 | 1      |
|- | -  | -         | *Delacorte Number*| **37** |

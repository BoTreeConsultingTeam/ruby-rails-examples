**Look Say Sequence**

Input a number and find the next number as per below rule:
- The next number in the sequence read off the digits of the given number, counting the number of digits in groups of the same digit

For example,
Input - 1
Output - 11 (i.e. one occurrence of 1)

Input - 11
Output - 21 (i.e. two occurrences of 1)

Input - 21
Output - 1211 (i.e. one occurrence of 2 and one occurrence of 1)

Input - 1211
Output - 111221 (i.e. one occurrence of 1 and one occurrence of 2 and two occurrences of 1)


By default, the code should return the next number only but it should be flexible enough to return multiple numbers in the sequence.
For example, by default, Input 1 will return 11
but Input (1, 3) should return [11, 21, 1211]
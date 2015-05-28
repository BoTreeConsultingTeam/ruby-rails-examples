**Code Refactoring**

Today's exercise is a feature building and refactoring exercise.
The `Alphabet` class represents english alphabet. There are few methods defined to build the english alphabet from letters.

A new feature added later to build an alphabet which is formed by joining original english alphabet letters randomly. This led to a thought that this can be achieved using `inheritance`. So, `RandomAlphabet` class is writted which is subclassed from `Alphabet`.

Another feature added to build an echo alphaget which is formed by joining each letter from english alphabet twice. Again, `inheritance` to the rescue. `EchoAlphabet` is written which generates every letter twice.

*Application:*
```
puts Alphabet.new.word(5) #This will output word formed with 5 letters
puts Alphabet.new.recite  #This will output whole alphabet

puts RandomAlphabet.new.word(8) #This will output like 'KBACTJGM'

puts EchoAlphabet.new.word(4)   #This will output 'AABBCCDD'
```

Now, The next required feature is to have an alphabet which has both random and echo features. Let's call it `RandomEchoAlphabet`.

Do you think the way `RandomAlphabet` and `EchoAlphabet` classes have been written using `inheritance` path is correct? Probably, not.

*Expectation:*
This is a thought provoking exercise. The code to be written is certainly not that will take 1 hour but the approach is. The expectation is that you see and understand that the subclasses of `Alphabet` are built incorrectly. `Inheritance` can be used when there is a `is_a` relationship between objects. Here, it seems that there is an `is_a` relationship between `Alphabet` and `RandomAlphabet` because the classes are written in such a way. `Random` and `Echo` are not the types of alphabets. They are something else. So does the `Random Echo`.
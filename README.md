# Anagram Detector Lab

## Learning Goals

- Build a class with an initialize method
- Use an attribute accessor macro to make an attribute available to a class's
  methods

## Description

You will write a program that, given a word and a list of possible
[anagrams][anagrams], selects the correct one(s).

Your class, `Anagram` should take a word on initialization; instances should
respond to a `match` instance method that takes an array of possible anagrams.
It should return all matches in an array. If no matches exist, it should return
an empty array.

In other words, given: `"listen"` and `%w(enlists google inlets banana)` the
program should return `["inlets"]`.

```ruby
listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))

# => ["inlets"]
```

**Top Tip:** [`%w(some words)`][array_shortcut] is simply a shortcut for
instantiating an array with items in it!

## Instructions

Once again, this lab is test-driven. Run the test suite to get started. Remember
that you can use the `learn --fail-fast` option to run the tests only up until
the first failure, in order to work progressively through the tests.

Write your solution in `anagram.rb`.

**Hints:**

- How will you determine if one word is an anagram for another?

  - You'll need to iterate over the array of words that the `.match` method
    takes as an argument. You will compare each word of that array to the word
    that the Anagram class is initialized with.

  - To determine if they are anagrams, try determining if they are composed of
    the same letters. Remember that you can split a word into an array of letters
    using `some_word.split("")`. You can compare two arrays using the `==`. For
    example:

```ruby
[1, 2, 3] == [1, 2, 3]
=> true

[1, 3, 2] == [1, 2, 3]
=> false
```

Two arrays are equal if they contain the same elements, in the same order.
Remember that you can `.sort` an array's elements. This will help in your
comparison:

```ruby
[1, 3, 2].sort == [3, 2, 1].sort
=> true
```

## Resources

- [StackOverflow](http://stackoverflow.com/) - [Ruby: what does %w(array) mean?](http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean)

[anagrams]: http://www.dictionary.com/browse/anagram
[array_shortcut]: http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean

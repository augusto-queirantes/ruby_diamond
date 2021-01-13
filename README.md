# Diamond Kata

! [Specs]&nbsp;(https://github.com/augusto-queirantes/ruby_diamond/workflows/Specs/badge.svg)
! [Linter]&nbsp;(https://github.com/augusto-queirantes/ruby_diamond/workflows/Linter/badge.svg)

## Navigation

- [Problem](#problem)
- [Examples](#examples)
- [Setup](#setup)
- [Usage](#usage)
- [Code Documentation](#code-documentation)
  - [Diamond](#diamond)
  - [Input Validator](#input-validator)
  - [Board](#board)
  - [Line](#line)
  - [Letter](#letter)

## Problem

The Diamond Kata is a TDD exercise. We have already provided a small collection of unit tests that
correctly assert the expected behaviour of the application.

The task is to get all the tests passing and have the code generate the expected string for a given
single character input.

Examples

    input:
      A
    output:
      A

    input:
      B
    output:
      _A_
      B_B
      _A_

    input:
      E
    output:
      ____A____
      ___B_B___
      __C___C__
      _D_____D_
      E_______E
      _D_____D_
      __C___C__
      ___B_B___
      ____A____

## Setup

1. Ensure you are using a compatible ruby version (>= 2.3.0)
2. `git clone git@github.com:augusto-queirantes/ruby_diamond.git`
3. `bundle install`

## Usage

- `rspec` to run tests
- `rubocop` to run linter

## Code Documentation

### Diamond

```
Implements only one public instance method called build that builds diamond expected string

Params:
  - input: string containing only one capital letter that represents the greatest letter that the diamond will contain

Implementation:
  method call: Diamod.new.build('B')
  output:
    _A_
    B_B
    _A_
```

### Input Validator

```
Implements only one public instance method called validate! that raises a error if the given input is invalid

Params:
  - input: string containing the given input

Implementation:
  method call: InputValidator.validate!('B')
  output: nil
```

### Board

```
Implements only one public class method called calculate_dimension that calculates the board dimension based on the given input

Params:
  - input_letter: string containing the given input

Implementation:
  method call: Board.calculate_dimension('B')
  output: 3
```

### Line

```
Implements only one public class method called buiild returns the given line expected string

Params:
  - input: string containing the given input
  - current_letter: string containing the current loop current letter

Implementation:
  method call: Line.calculate_dimension('C', 'A')
  output: __A__
```

### Letter

```
Implements only one public instance method that returns the next character

Params:
  - input: string containing the given inpu

Implementation:
  method call: Letter.new.next
  output: A
```

# Rethinking OCaml Recursive Values #

Alban Reynaud
Inria Saclay, supervised by Gabriel Scherer

# Context #

- `let rec f x = ... and g y = ...`
- `let rec x = 1 :: x`
- `let rec x = 1 + x`.

## Motivation ##

- Until OCaml 4.06, this check was done with a list of *ad hoc* rules. 
- In 2016, Jeremy Yallop proposed a new system.
  Good: looks like a type system
  Bad: too complex
- Goal: design and implement a simpler system

## My Contribution ##
Règles de Jeremy, conception des nouvelles règles, implémentation, bug

## Access Modes ##
- *Deref*: the value of a variable is inspected.
  Example: `x` in `x + 1`
- *Guarded*: the address of a value is placed in a constructor.
  Example: `x` in `Some x`
- *Delayed*: evaluating the expression does not require the variable
  `fun () -> x`, `lazy x`

## What should be allowed ##
- accept Guarded or Delayed
- `let rec f x = ... and g y = ...`
- `let rec x = 1 :: x`
- `let rec x = 1 + x`.

## Jeremy's System ##
- u ::= (x : m)*
- Γ ::= (x : u)*
- Γ |- e : u
- Check algorithm

## One Typing Rule ##
- I did the judgement
let x = e1 in e2

## New system ##

## One Typing Rule ##

## Implementation ##
- one case: ifthenels
- testsuite

## Conclusion ##

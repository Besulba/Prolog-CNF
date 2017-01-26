# Cnf.pl

Camilo Andrés Rodríguez Garzón

Cnf is a Prolog program intends to provide a solution
give one PROP return a PROP in conjunctive normal form (cnf).
SWI-Prolog version 7.2.3 for x86_64-darwin16.3.0

### Syntactic Proposition 

The set of well-formed formulae is defined by the following grammar:

    for ::= p         (proposition symbols)
    for | ~for        (negation)
    for | for ^ for   (conjunction)
    for | for ; for   (disjunction)
    for | for --> for (implication)
    for | for -;- for (bi-implication)

### Usage

Load the module as usual in Prolog and then try the following.
In the following examples, `cnf` is the function that normalizes to conjuntive normal form.

* cnf Denials disyunciones

```Prolog
cnf(a;(b^c),F).
cnf((a^b);c,F).
```
* remove biconditionals using equivalence

```Prolog
cnf(a-;-b,F).
```
* cnf remove conditional using equivalence

```Prolog
cnf(a-->b,F).
```
* cnf Denials internalized using equivalences

```Prolog
cnf(~(a-->b),F).
cnf(~(a^b),F).
cnf(~(a;b),F).
```
* cnf conjuntion elemental and

```Prolog
cnf(a^b,F).
```
* cnf conjuntion elemental or

```Prolog
cnf(a;b,F).
```
* cnf of two negation

```Prolog
cnf(~(~(a)),F).
```
* cnf of negation

```Prolog
cnf(~(a),F).
```
* otherwise atomic PROP

```Prolog
cnf(a,F) :- A=F.
```

### Testing

```
$  swipl
calling the function [cnf].
```
### References

* Mordechai_Ben-Ari. *Mathematical Logic for Computer Science*

# Cnf.pl

Camilo Andrés Rodríguez Garzón

Give one PROP return a PROP in conjunctive normal form (cnf).
Prolog version: SWI-Prolog version 7.2.3 for x86_64-darwin15.2.0

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

```Prolog
* cnf Denials disyunciones
cnf(a;(b^c),F).
cnf((a^b);c,F).
```
```Prolog
* remove biconditionals using equivalence'
cnf(a-;-b,F).
```
```Prolog
* cnf remove conditional using equivalence'
cnf(a-->b,F).
```
```Prolog
* cnf Denials internalized using equivalences'
cnf(~(a-->b),F).
cnf(~(a^b),F).
cnf(~(a;b),F).
```
```Prolog
* cnf conjuntion elemental and'
cnf(a^b,F).
```
```Prolog
* cnf conjuntio elemental or'
cnf(a;b,F).
```
```Prolog
* cnf of two negation'
cnf(~(~(a)),F).
```
```Prolog
* cnf of negation'
cnf(~(a),F).
```
```Prolog
* otherwise atomic PROP'
cnf(a,F) :- A=F.
```
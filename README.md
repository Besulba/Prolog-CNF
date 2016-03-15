# Prolog-CNF
Give one PROP return a PROP in conjunctive normal form (cnf). </br>
Name Author: Camilo Andrés Rodríguez Garzón. </br>
Prolog version: SWI-Prolog version 7.2.3 for x86_64-darwin15.2.0 </br>

Program description:

The set of well-formed formulae is defined by the following grammar:

    for ::= p         (proposition symbols)
    for | ~for        (negation)
    for | for ^ for   (conjunction)
    for | for ; for   (disjunction)
    for | for --> for (implication)
    for | for -;- for (bi-implication)


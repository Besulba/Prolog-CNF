%'cnf Denials disyunciones'
cnf(a;(b^c),F).
cnf((a^b);c,F).
%'remove biconditionals using equivalence'
cnf(a-;-b,F).
%'cnf remove conditional using equivalence'
cnf(a-->b,F).
%'cnf Denials internalized using equivalences'
cnf(~(a-->b),F).
cnf(~(a^b),F).
cnf(~(a;b),F).
%'cnf conjuntion elemental and'
cnf(a^b,F).
%'cnf conjuntio elemental or'
cnf(a;b,F).
%'cnf of two negation'
cnf(~(~(a)),F).
%'cnf of negation'
cnf(~(a),F).
%'otherwise atomic PROP'
cnf(a,F) :- A=F.
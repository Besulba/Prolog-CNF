%'cnf Denials disyunciones'
cnf(A;(B^C),F) :- cnf(A;B,X) , cnf(A;C,Y) , (X^Y) = F.
cnf((A^B);C,F) :- cnf(A;B,X) , cnf(A;C,Y) , (X^Y) = F.
%'remove biconditionals using equivalence'
cnf(A-;-B,F) :- cnf(A-->B,X) , cnf(B-->A,Y) , (X^Y) = F.
%'cnf remove conditional using equivalence'
cnf(A-->B,F) :- cnf(~(A),X) , cnf(B,Y) , (X;Y) = F.
%'cnf Denials internalized using equivalences'
cnf(~(A-->B),F) :- cnf(A-->B,W) , cnf(~(W),F).
cnf(~(A^B),F) :- cnf(~(A),X) , cnf(~(B),Y) , (X;Y) = F.
cnf(~(A;B),F) :- cnf(~(A),X) , cnf(~(B),Y) , (X^Y) = F.
%'cnf conjuntion elemental and'
cnf(A^B,F) :- cnf(A,X) , cnf(B,Y) , (X^Y) = F.
%'cnf conjuntio elemental or'
cnf(A;B,F) :- cnf(A,X) , cnf(B,Y) , (X;Y) = F.
%'cnf of two negation'
cnf(~(~(X)),F) :- cnf(X,F).
%'cnf of negation'
cnf(~(A),F) :- cnf(A,F), ~(A) = F.
%'otherwise atomic PROP'
cnf(A,F) :- A=F.
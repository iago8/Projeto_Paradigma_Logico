progenitor(pam,bob).
progenitor(tom,bob).
progenitor(tom,liz).
progenitor(bob,ann).
progenitor(bob,pat).
progenitor(pat,jim).


homem(tom).
homem(bob).
homem(jim).
mulher(liz).
mulher(pat).
mulher(ann).
mulher(pam).


filho(Y,X):-progenitor(X,Y).
avos(X,Z):-progenitor(X,Y),progenitor(Y,Z).
mae(X,Y):-progenitor(X,Y),mulher(X).
pai(X,Y):-progenitor(X,Y),homem(X).
irma(X,Y):-progenitor(Z,X),progenitor(Z,Y),mulher(X).
irmao(X,Y):-progenitor(W,X),progenitor(W,Y),homem(X).
tia(X,Y):-progenitor(Z,Y)irma(X,Z).
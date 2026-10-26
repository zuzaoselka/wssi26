zwierze(tom).
zwierze(fido).
zwierze(reks).
kot(tom).
pies(fido).


osoba(ania). osoba(bartek). osoba(celina).
osoba(dawid). osoba(ewa). osoba(filip).
plec(ania,kobieta). plec(celina,kobieta).
plec(ewa,kobieta).
plec(bartek,mezczyzna). plec(dawid,mezczyzna).
plec(filip,mezczyzna).
lubi(ania,bartek). lubi(bartek,ania).
lubi(ania,celina). lubi(celina,ania).
lubi(ewa,filip). lubi(filip,ewa).
lubi(dawid,ewa). lubi(filip,ania).
lubi(bartek,dawid).
unika(celina,filip). unika(filip,celina).
unika(dawid,bartek).
kocha(ania,bartek). kocha(bartek,ania).
kocha(celina,dawid). kocha(dawid,celina).
kocha(dawid,ewa).
kocha(ewa,filip). kocha(filip,ewa).
wzajemna_sympatia(X,Y) :- plec(X,kobieta), plec(Y,mezczyzna), lubi(X,Y), lubi(Y,X).
nieprzyjazn(X,Y) :- unika(X,Y), unika(Y,X).
niby_przyjazn(X,Y) :- lubi(X,Y), \+ lubi(Y,X).
znajomy_znajomego(X,Z) :- lubi(X,Y), lubi(Y,Z), dif(X,Z).
loves(X,Y) :- kocha(X,Y), kocha(Y,X).
loves(X,Y) :- kocha(X,Y), kocha(Y,X).
inna_milosc(X,Y) :- kocha(X,Z), dif(Z,Y).
true_love(X,Y) :- loves(X,Y), \+ inna_milosc(X,Y), \+ inna_milosc(Y,X).

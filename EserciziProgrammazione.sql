select *
from Città;

select Programmatore.codice, count(*)
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.anno>1999
group by Programmatore.codice


select Programmatore.Nome, Programmatore.categoria
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.linguaggio != "Python"
order by Programmatore.Nome


select Programmatore.codice, Programma.anno
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.linguaggio != "java" and Programmatore.categoria=10

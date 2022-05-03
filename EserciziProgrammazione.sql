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


select distinct a1.codice as programma1 , a2.codice as programma2
from Programma join autore a1 on Programma.id=a1.id 
     join autore a2 on Programma.id=a2.id 
where  Programma.linguaggio = "Python" and a1.codice!=a2.codice
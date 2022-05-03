select *
from Città;

/* ES 1 */
select Programmatore.codice, count(*)
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.anno>1999
group by Programmatore.codice

/* ES 2 */
select Programmatore.Nome, Programmatore.categoria
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.linguaggio != "Python"
order by Programmatore.Nome

/* ES 3 */
select Programmatore.codice, Programma.anno
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.linguaggio != "java" and Programmatore.categoria=10

/* ES 4 */
select distinct a1.codice as programma1 , a2.codice as programma2
from Programma join autore a1 on Programma.id=a1.id 
     join autore a2 on Programma.id=a2.id 
where  Programma.linguaggio = "Python" and a1.codice!=a2.codice

/* ES 5 */

/* ES 6 */
select distinct Programma.anno, Autore.codice, count(Programma.id)
from Autore join Programmatore on Autore.codice=Programmatore.codice
    join Programma on Autore.id=Programma.id
where Programmatore.codice=Autore.codice and Autore.id=Programma.id
group by Programma.anno, Autore.codice

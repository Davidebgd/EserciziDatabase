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
select p.codice, p.nome
from Programmatore p join Autore a on p.codice=a.codice join Programma pr on pr.id=a.id
where pr.linguaggio = "java"
group by pr.linguaggio 

/* ES 6 */
select distinct Programma.anno, Autore.codice, count(Programma.id)
from Autore join Programmatore on Autore.codice=Programmatore.codice
    join Programma on Autore.id=Programma.id
where Programmatore.codice=Autore.codice and Autore.id=Programma.id
group by Programma.anno, Autore.codice

/* ES 7 */
select Programma.linguaggio, count(distinct Autore.codice)
from Programma join Autore on Programma.id=Autore.id 
group by Programma.linguaggio

/*CORREZIONI
select Autore.codice
from Programma join Autore on Autore.id=Programma.id
where Programma.anno>=2000 and Programma.linguaggio = "java"


select Programmatore.Nome, Programmatore.categoria
from Programmatore,Programma,Autore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id and Programma.linguaggio != "Python"
order by Programmatore.Nome


select P.codice,min(PR.anno) as Anno, PR.linguaggio
from Programmatore P join Autore on P.codice = Autore.codice 
    join Programma PR on PR.id = Autore.id
where P.categoria = 10 and PR.linguaggio != "Python"
group by P.codice


select distinct a1.codice as A1 , a2.codice as A2
from Programma join Autore a1 on Programma.id=a1.id 
     join Autore a2 on a1.id=a2.id 
where  Programma.linguaggio = "Python" and a1.codice!=a2.codice and a1.codice>a2.codice

use Programmazione;
select p.codice, p.nome
from Programmatore p join Autore a on p.codice=a.codice join Programma pr on pr.id=a.id
where pr.linguaggio = "java"
group by pr.linguaggio 

use Programmazione;
select distinct Programma.anno, Autore.codice, count(Programma.id)
from Autore,Programma,Programmatore
where Programmatore.codice=Autore.codice and Autore.id=Programma.id
group by Programma.anno, Autore.codice
order by Programma.anno

use Programmazione;
select Programma.linguaggio, count(Autore.codice)/count(distinct Programma.id) as Media
from Programma left join Autore on Programma.id=Autore.id 
group by Programma.linguaggio
*/

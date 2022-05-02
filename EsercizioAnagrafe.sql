select *
from Città;

select Persona.Nome, Città.Regione, Persona.Età
from Persona, Città
where Persona.CittàNascita = Città.Nome && Persona.Età>=18

select p1.Nome, p2.Nome, Persona.CittàNascita
from Persona p1 join Genia g on p1.Nome = g.Figlio
    join Persona p2 on p2.Nome = g.Genitore
where p1.CittàNascita = p2.CittàNascita

select Genia.Genitore,Persona.CittàNascita
from Genia join Persona on Persona.Nome = Genia.Genitore
where Persona.Età >=50

select distinct g.Genitore as Nonni
from Genia g join Genia gen on gen.Genitore = g.Figlio

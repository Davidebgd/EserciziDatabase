select *
from Città;

select Persona.Nome, Città.Regione, Persona.Età
from Persona, Città
where Persona.CittàNascita = Città.Nome && Persona.Età>=18

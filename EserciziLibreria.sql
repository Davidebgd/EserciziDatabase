select *
from Romanzo

select Romanzo.Titolo
from Romanzo
where Romanzo.AnnoPubblicazione = 2011

select Romanzo.Titolo, Autore.Nome,Autore.Cognome
from Romanzo, Autore
where

select Romanzo .Titolo, Autore.Nome, Autore.Cognome
from Romanzo, Autore
where Romanzo.Autore = Autore.ID
order by Autore.Cognome, Autore.Nome
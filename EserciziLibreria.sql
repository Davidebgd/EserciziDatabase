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

select Romanzo .Titolo, Autore.Nome, Autore.Cognome
from Romanzo, Autore
where Romanzo.Autore and Autore.Nazionalità= "Russo"
order by Autore.Cognome , Autore.Nome

select Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID and Autore.DataNascita >=1900 and Autore.DataNascita <=2000
order by Autore.Cognome, Autore.Nome, Romanzo.AnnoPubblicazione

select Romanzo.Titolo, Romanzo.AnnoPubblicazione
from Romanzo, Autore
where Romanzo.Autore = Autore.ID and Autore.DataMorte = null
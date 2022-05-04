SELECT Scalatore.cf as Scalatore, Scalata.nazione as Nazione,count(*)
FROM Scalata join Scalatore on Scalata.scalatore=Scalatore.cf
group by Scalata.nazione


SELECT Scalatore.cf as Scalatore, Nazione.continente as Continente, count (*) as Scalate 
FROM Scalatore join Scalata on Scalata.scalatore=Scalatore.cf
    join Nazione on Scalata.nazione= Nazione.nome
group by Scalatore.cf, Nazione.continente


SELECT Nazione.nome, Nazione.Continente , count(*)
FROM Scalatore join Scalata on Scalata.scalatore=Scalatore.cf
    join Nazione on Scalata.nazione= Nazione.nome
WHERE Scalata.anno - Scalatore.annoNascita < 18
group by  Nazione.nome, Nazione.Continente

SELECT Scalata.nazione, count(*) as Scalatori
FROM Scalatore join Scalata on Scalata.scalatore=Scalatore.cf
WHERE Scalatore.nazioneNascita = Scalata.Nazione
group by Scalata.nazione
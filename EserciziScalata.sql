/*     ES 1     */
SELECT Scalatore.cf as Scalatore, Scalata.nazione as Nazione,count(*)
FROM Scalata join Scalatore on Scalata.scalatore=Scalatore.cf
group by Scalata.nazione


/*     ES 2     */
SELECT Scalatore.cf as Scalatore, Nazione.continente as Continente, count (*) as Scalate 
FROM Scalatore join Scalata on Scalata.scalatore=Scalatore.cf
    join Nazione on Scalata.nazione= Nazione.nome
group by Scalatore.cf, Nazione.continente


/*     ES 3     */
SELECT Nazione.nome, Nazione.Continente , count(*)
FROM Scalatore join Scalata on Scalata.scalatore=Scalatore.cf
    join Nazione on Scalata.nazione= Nazione.nome
WHERE Scalata.anno - Scalatore.annoNascita < 18
group by  Nazione.nome, Nazione.Continente


/*     ES 4     */
SELECT Scalata.nazione, count(*) as Scalatori
FROM Scalatore join Scalata on Scalata.scalatore=Scalatore.cf
WHERE Scalatore.nazioneNascita = Scalata.Nazione
group by Scalata.nazione

/*     ES 5     */

/*     ES 6     */
SELECT distinct Scalatore.cf, Scalatore.nazioneNascita, Nazione.continente, count(*)
FROM  Scalatore join Nazione on Scalatore.nazioneNascita = Nazione.nome
    join Scalata on Scalatore.cf = Scalata.scalatore
WHERE Scalatore.nazioneNascita = Nazione.nome and Nazione.continente !="America"
group by Scalatore.cf

/*     ES 7     */
SELECT  Nazione.nome, Scalata.anno, count(*)
FROM Scalata join Nazione on Scalata.nazione = Nazione.nome
group by Nazione.continente, Scalata.nazione,Scalata.anno
having count(*)>1
order by Nazione.continente, Scalata.anno


/*     ES 8     */
SELECT distinct Nazione.nome, count(Scalata.scalatore)/count(distinct Scalata.anno) as Media, Scalata.anno
FROM Scalata join Nazione on Scalata.nazione = Nazione.nome
    join Scalatore on Scalata.scalatore = Scalatore.cf
WHERE Scalatore.nazioneNascita != Scalata.nazione
group by Scalata.anno, Nazione.nome
ORDER BY Nazione.nome
/* 1. Calcolare il codice dei programmatori che sono stati autori 
di almeno un programma scritto in Java dopo il 2000. */
SELECT codice
FROM autore, programma 
WHERE programma.anno > 2000 and programma.linguaggio = 'Java' and autore.id = programma.id
/* 2. Calcolare il nome e la categoria dei programmatori che sono stati autori 
di almeno un programma scritto in un linguaggio diverso da Python, 
ordinando il risultato rispetto al nome dei programmatori. */
SELECT nome, categoria
FROM programmatore join autore on programmatore.codice = autore.codice
join programma on autore.id = programma.id
WHERE linguaggio != 'Python'
ORDER BY nome
/* 3. Per ogni programmatore di categoria 10, calcolare il suo codice e 
l'anno in cui ha scritto il primo programma in un linguaggio diverso da Java. */
SELECT programmatore.codice, min(anno)
FROM programmatore join autore on programmatore.codice = autore.codice
    join programma on autore.id = programma.id
WHERE categoria=10 and linguaggio != 'Java'
/* 4. Calcolare le coppie dei codici di programmatori che 
sono stati coautori di almeno un programma scritto in Python. */
SELECT distinct a1.codice, a2.codice
FROM autore a1, autore a2, programma as p
WHERE a1.id = a2.id and a1.codice > a2.codice and p.linguaggio = 'Python'
/* 5. Calcolare il codice ed il nome dei 
programmatori che hanno scritto solo programmi Java. */

/* 6. Per ogni programmatore e per ogni anno calcolare il numero di programmi 
scritti da quel programmatore in quell’anno, mostrando codice del programmatore, 
anno e numero di programmi scritti. */

/* 7. Per ogni linguaggio calcolare quanti sono in 
media gli autori dei programmi scritti in quel linguaggio.
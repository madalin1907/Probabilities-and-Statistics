# Implementati in R o functie care simuleaza o distributie discreta si genereaza o histograma cu rezultatele.
# Functia va avea 3 parametri: n (nr. de simulari), x (valorile variabilei aleatoare), p (probabilitatile)

distributie <- function(n, x, p) {
  rezultate <- numeric()
  
  if (length(x) != length(p))
    stop("Numarul de valori ale variabilei aleatoare nu este egal cu numarul de probabilitati.")

  for(i in 1:n) {
    nr <- runif(1) # se genereaza un numar random intre 0 si 1
  
    for (j in 1:length(x)) {
      if (nr <= sum(p[1:j])) {
        rezultate[i] <- x[j]
        break
      }
    }
  }
  
  return(rezultate)
}

rez_final <- distributie(10000, c(1, 3, 4, 5, 6), c(0.5, 0.1, 0.25, 0.1, 0.05))
hist(rez_final)
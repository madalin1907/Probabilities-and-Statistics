# Avem o suma de k unitati monetare si aruncam un ban.
# Heads -> +1 u.m. | Tails -> -1 u.m.
# Game over: 0 / n u.m.
# 0 < k < n
# P(faliment) = 1 - (k / n)


nrTeste = 1000
k = 100
n = 300
totalFalimente = 0

test = nrTeste
while (test) {
  sum = k
  while (0 < sum && sum < n) {
    x = sample(c("H", "T"), 1, replace = TRUE)
    
    if (x == "H") {
      sum = sum + 1
    }
    else {
      sum = sum - 1
    }
  }
  
  if (!sum) {
    totalFalimente = totalFalimente + 1
  }
  
  test = test - 1;
}

pFaliment = totalFalimente / nrTeste
pFormula = 1 - k / n # formula din seminar
# P(BB)
N = 100000
x = sample(c("baiat", "fata"), N, replace = TRUE)
y = sample(c("baiat", "fata"), N, replace = TRUE)

BB = sum(x == "baiat" & y == "baiat")
p1 = BB / N




# P(BB | cel putin unul este baiat)
N = 1000000
x = sample(c("baiat", "fata"), N, replace = TRUE)
y = sample(c("baiat", "fata"), N, replace = TRUE)

BB = sum(x == "baiat" & y == "baiat")
BX = sum(x == "baiat" | y == "baiat")
p2 = BB / BX




# P(BB | cel mai tanar este baiat)
N = 1000000
x = sample(c("baiat", "fata"), N, replace = TRUE)
y = sample(c("baiat", "fata"), N, replace = TRUE)

BB = sum(x == "baiat" & y == "baiat")
BX = sum(x == "baiat")
p3 = BB / BX










n = 100 # nr. de cupoane
m = 1000 # nr. de simulari
count = rep(0, m) # vom numara nr de cutii
for (i in 1:m) {
  x = rep(0, n) # x[a] != 0 daca a fost gasit
  p = prod(x)
  while(p == 0) {
    a = sample(1:n, 1, replace = "TRUE")
    x[a] = x[a] + 1
    count[i] = count[i] + 1
    p = prod(x)
  }
}
print(mean(count))
















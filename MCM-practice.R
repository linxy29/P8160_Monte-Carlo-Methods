## using LCG to generate random number

lcg <- function(a, c, m, seed, nnum=1){
  results <- vector("numeric", nnum)
  results[1] = (a * seed + c) %% m
  for (i in 2:nnum)
    results[i] = (a*results[i - 1] + c) %% m
  return(results)
}

test <- lcg(9, 5, 16, 8, 20)

test


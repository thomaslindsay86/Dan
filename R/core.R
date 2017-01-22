length <- function(word) {
  something <- nchar(word)
  return(something)
}

nLetter <- function(word,position) {
  toReturn <- substr(word,position,position)
  return(toReturn)
}

alphaNum <- function(letter) {
  toReturn <- 0
  switch(letter,
         a ={toReturn=1},
         A ={toReturn=1},
         b ={toReturn=2},
         B ={toReturn=2},
         c ={toReturn=3},
         C ={toReturn=3},
         d ={toReturn=4},
         D ={toReturn=4},
         e ={toReturn=5},
         E ={toReturn=5},
         {print("letter not recognised")}
  )
  return(toReturn)
}

firstWordFirstLetterFirst <- function(word1,word2){
  firstLetterFirstWord <- nLetter(word1,1)
  secondLetterSecondWord <- nLetter(word2,1)

  firstWordNum <- alphaNum(firstLetterFirstWord)
  secondWordNum <- alphaNum(secondLetterSecondWord)

  toReturn <- (firstWordNum <= secondWordNum)
  return(toReturn)
}

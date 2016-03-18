-- file ch03/BadPattern.hs
-- non exhaustive pattern matching
-- Important to cover all types of constructor
badExample (x:xs) = x + badExample xs
--Missing 0 case badExample [] = 0

--Good Example
goodExample (x:xs) = x + goodExample xs
goodExample _ = 0

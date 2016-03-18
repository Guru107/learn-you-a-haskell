-- file ch03/Distinction.hs
-- Difference between Algebric Data Types and Tuples
-- When to use them
-- Tuples with elements of the same type are structurally identical, so they have the same type

a = ("Porpoise","Grey")
b = ("Table","Oak")

-- Algebric data types, since they have different value constructor names, they are distinct even though
-- they have identical structure
data Cetacean = Cetacean String String
data Furniture = Furniture String String

c = Cetacean "Porpoise" "Grey"
d = Furniture "Table" "Oak"

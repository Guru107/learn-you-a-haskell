-- file ch03/add.hs
myNot True = False
myNot False = True

sumList(x:xs) = x + sumList xs
sumList [] = 0

maximum' :: (Ord a) => [a] -> a
maximum' []= error "Maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
	| x > maxTail = x
	| otherwise = maxTail
	where maxTail = maximum' xs

--pattern matching way

--replicate' 0 x = []
--replicate' n x = x : replicate' (n-1) x


-- Using Guards
replicate' n x
	| n <= 0 = []
	| otherwise = x:replicate' (n-1) x

take' n _
	|  n <= 0 = []
take' _ [] = []
take' n (x:xs) = x:take' (n-1) xs

zip' :: [a] -> [b] -> [(a,b)]
zip' (x:xs)(y:ys) = (x,y): zip' xs ys
zip' _ [] = []
zip' [] _ = []

elem' :: (Eq a) => a -> [a]-> Bool
elem' a [] = False
elem' a (x:xs)
	| a == x = True
	|otherwise = a `elem'` xs

--compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred  = compare 100

divideByTen = (/10)

isUpperAlphaNum = (`elem` ['A'..'Z'])

subtractFour = (subtract 4)

applyTwice f x = f (f x)

zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
zipWith' _ [] _ = []
zipWith' _ _ [] = []

flip' f y x = f x y

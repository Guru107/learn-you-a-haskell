doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else x*2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
conanO'Brien = "It's a-me, Conan O'Brein!"
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
--length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [c | c<-st, c `elem` ['A'..'Z']]
addThree x y z = x + y + z
factorial 0 = 1
factorial n = product [1..n]
circumference r = 2 * pi * r
circumference' r = 2 * pi * r
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe 1 = "ONE!"
sayMe 2 = "TWO"
sayMe 3 = "THREE"
sayMe 4 = "FOUR"
sayMe 5 = "FIVE"
sayMe x = "Not between 1 and 5"
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVectors (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)

first (x, _, _) = x
second (_, y , _) = y
third (_, _, z) = z
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x
tell [] = "The list empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and "++show y
tell (x:y:_) = "This list is long. The first two elements are: "++show x ++" and "++ show y

length' []=0
length' (_:xs) = 1 + length' xs

sum' [] = 0
sum' (x:xs) = x + sum' xs
captial "" = "Empty string, whoops!"
captial all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

max' a b
	| a > b = a
	| otherwise = b
a `myCompare` b
	| a > b = GT
	| a == b = EQ
	| otherwise = LT

--calcBmis xs = [bmi w h | (w,h) <- xs]
--	where bmi weight height = weight / height ^ 2

-- cylinder r h =
-- 	let sideArea = 2 * pi * r * h
-- 		topArea = pi * r^2
-- 	in sideArea + 2 * topArea

--calcBmis xs = [bmi | (w, h)<-xs, let bmi = w / h ^ 2]
print_hello n = if(n==0) then return () else putStrLn "Hello World" >> print_hello (n-1)
hello_world n = print_hello n

f n arr = [ x| x<-arr, x<n]

n = a `div` length xs
	where
		a = 10
		xs = [1,2,3,4,5]

-- product' [] = 1
-- product' (x:(y: (z:xs))) = x * y * z * product' xs

product' [] = 0
product' (x:xs) = x * product' xs

qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
	where
		smaller = [a | a <- xs, a<x]
		larger = [b | b <- xs, b>x]





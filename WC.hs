-- file ch01/WC.hs
-- lines beginning with "--" are comments
main :: IO ()
main = interact wordCount
 where
 wordCount input = show (length (lines input)) ++ "\n"

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
	then xs
 	else myDrop(n - 1) (tail xs)

myDropX n xs = if n <= 0 || null xs then xs else myDropX(n - 1) (tail xs)

isOdd n = mod n 2 == 1


second xs = head (tail xs)

swap (x,y) = (y,x)

pair x y = (x,y)

double x = x * 2

palindrome xs = reverse xs == xs

twice f x = f (f x)

f xs = take 3 (reverse xs)

data BookInfo = Book Int String [String] deriving (Show)




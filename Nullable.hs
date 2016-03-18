-- file ch03/Nullable.hs

--data MayBe a = Just a
--			 | Nothing
someBool = Just True

someString = Just "something"

wrapped = Just (Just "wrapped")

pairOff :: Int -> Either String Int
pairOff people
		| people < 0 = Left "Can't pair off -ve number of people"
		| people > 30 = Left "Too many people for this activity"
		| even people = Right (people `div` 2)
		| otherwise = Left "Can't pair off odd number of people"

groupPeople :: Int -> String

groupPeople people =
	case pairOff people of
		Right groups -> "We have " ++ show groups ++ " groups(s)"
		Left problem -> "Problem! " ++ problem

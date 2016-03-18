-- "BookInfo"= type constructor (Name of the type)
-- "Book" = value constructor (Used to create a value of the BookInfo type)
data BookInfo = Book Int String [String] deriving (Show)
data MagazineInfo = Magazine Int String [String] deriving (Show)

myInfo = Book 9872012 "Alegbra of Programming" ["Richard Bird","Oege de Moor"]
data BookReview = BookReview BookInfo CustomerID String
-- type keyword introduces type synonym
-- New name on the LHS of = and existing name on RHS
type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo,BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
				| CashOnDelivery
				| Invoice CustomerID
				deriving (Show)

bookId (Book id title author) = id
bookTitle (Book id title author) = title
bookAuthor (Book id title author) = author

nicerId (Book id _ 	_) = id
nicerTitle (Book _ title _) = title
nicerAuthor (Book _ _ author) = author

data Customer = Customer {
	customerId :: CustomerID,
	customerName :: String,
	customerAddress :: Address
} deriving (Show)

customer1 = Customer 1 "Abcd" ["Abcd","Efgh"]

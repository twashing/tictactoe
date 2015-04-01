module Main where

import Control.Lens

data Piece = X | O | E deriving Show
type Row = [Piece]
type Board = [Row]
data Position = Int Int deriving Show
-- data Position = (Field2 s t a b, Functor f)
-- data Position = Simple Lens (Int a) (Int a) deriving Show
-- data Position = Position Int Int deriving Show


-- put an X or O in a position
-- move :: Board -> Piece -> Position -> Board
-- move board piece position = board
move :: a -> b1 -> ASetter a b a1 b1 -> b
move board position piece = board & position .~ piece

-- move board piece position = set (position) piece board
-- move :: Board -> Piece -> ((Field2 s t a b, Functor f) => (a -> f b) -> s -> f t) -> Board
-- move :: Board -> Piece -> ((a -> f b) -> s -> f t) -> Board
-- move :: Board -> Piece -> (a -> f b) -> Board
-- move :: Board -> Piece -> (s -> f t) -> Board


-- check win vertically
-- check win horizontally
-- check win diagonally

main :: IO ()
main = putStrLn "Hello World"


-- using Lenses
-- https://github.com/ekmett/lens/wiki/Examples
-- http://lens.github.io/tutorial.html
-- http://blog.jakubarnold.cz/2014/07/14/lens-tutorial-introduction-part-1.html

--let r1 = (E,E,E)
--let r2 = (E,E,E)
--let r3 = (E,E,E)
--let board = (r1,r2,r3)


-- λ> let a = _2
-- λ> a
-- a :: (Field2 s t a b, Functor f) => (a -> f b) -> s -> f t
-- λ> board ^. a
-- (E,E,E)
               

import Data.Array
import qualified Data.List.Split as S

data Piece' = X | O | E deriving Show
type Position' = (Int,Int)
type Board' = Array Position' Piece'

board' :: Board'
board' = array ((1,1),(3,3)) [((i,j), E) | i <- [1,2,3], j <- [1,2,3]]

ppb' :: Board' -> IO()
ppb' b = mapM_ print $ S.chunksOf 3 $ elems b

move' :: Board' -> Piece' -> Position' -> Board'
move' board piece pos = board // [(pos, piece)]


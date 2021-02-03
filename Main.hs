--
-- EPITECH PROJECT, 2021
-- undefined
-- File description:
-- Main
--
module Main where
import Sorting
import Data.Char
import Data.Maybe
import Data.List
import System.IO
import System.Environment
import System.Exit

sortFunc :: String -> ([Int], [Int]) -> Maybe ([Int], [Int])
sortFunc "sa" tuple = Just (sa (tuple))
sortFunc "sb" tuple = Just (sb (tuple))
sortFunc "sc" tuple = Just (sc (tuple))
sortFunc "pa" tuple = Just (pa (tuple))
sortFunc "pb" tuple = Just (pb (tuple))
sortFunc "ra" tuple = Just (ra (tuple))
sortFunc "rb" tuple = Just (rb (tuple))
sortFunc "rr" tuple = Just (rr (tuple))
sortFunc "rra" tuple = Just (rra (tuple))
sortFunc "rrb" tuple = Just (rrb (tuple))
sortFunc "rrr" tuple = Just (rrr (tuple))
sortFunc operator list = Nothing

parseEcho :: [String] -> Maybe ([Int], [Int]) -> String
parseEcho _ Nothing = "KO"
parseEcho [] (Just (list))
    | fst list == sort(fst list) = "OK"
    | fst list /= sort(fst list) = "KO"
parseEcho (elem:otherElems) (Just (list)) = parseEcho otherElems (sortFunc elem (list))

main :: IO()
main = do
    args <- getArgs
    let intlist = map(read::String->Int) args
    line <- getLine
    let ret = parseEcho (words line) (Just (intlist, []))
    putStrLn ret
    if ret == "KO" then exitWith(ExitFailure 84) else exitWith(ExitSuccess)

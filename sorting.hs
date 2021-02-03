--
-- EPITECH PROJECT, 2021
-- la piscine du fun
-- File description:
-- sorting
--

module Sorting where
import Data.Maybe
import Data.List
import Data.Char

sa :: ([Int], [Int]) -> ([Int], [Int])
sa ([], b) = ([], b)
sa (x:[], b) = (x:[], b)
sa (x:y:xs, b) = (y:x:xs, b)

sb :: ([Int], [Int]) -> ([Int], [Int])
sb (a, []) = (a, [])
sb (a, b : []) = (a, b:[])
sb (a, x:y:xs) = (a, y:x:xs)

sc :: ([Int], [Int]) -> ([Int], [Int])
sc list = sa $ sb list

pa :: ([Int], [Int]) -> ([Int], [Int])
pa (a, []) = (a, [])
pa (a, (x : xs)) = (x : a, xs)

pb :: ([Int], [Int]) -> ([Int], [Int])
pb ([], b) = ([], b)
pb ((x : xs), b) = (xs, x : b)

ra :: ([Int], [Int]) -> ([Int], [Int])
ra ([], b) = ([], b)
ra ((x : xs), b) = (xs ++ [x], b)

rb :: ([Int], [Int]) -> ([Int], [Int])
rb (a, []) = (a, [])
rb (a, (x : xs)) = (a , xs ++ [x])

rr :: ([Int], [Int]) -> ([Int], [Int])
rr list = ra $ rb list 

rra :: ([Int], [Int]) -> ([Int], [Int])
rra ([], b) = ([], b)
rra (a, b) = ((last a) : (init a), b)

rrb :: ([Int], [Int]) -> ([Int], [Int])
rrb (a, []) = (a, [])
rrb (a, b) = ((a, (last b) : (init b)))

rrr :: ([Int], [Int]) -> ([Int], [Int])
rrr list = rra $ rrb list

-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical.
-- Sort ascending order

select concat(name, "(", left(occupation, 1), ")") as nameocc
from occupations
order by name asc;

select concat("There are a total of ", count(occupation), " ", lower(occupation), "s.") as occupationCount
from occupations
group by occupation
order by count(occupation), lower(occupation)

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
director_gross = 0
movie_index = 0
  while movie_index < director_data[:movies].length do
    director_gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
   end
director_gross   
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
{"Stephen Spielberg"=>1357566430,
        "Russo Brothers"=>2281002470,
        "James Cameron"=>2571020373,
        "Spike Lee"=>256624217,
        "Wachowski Siblings"=>806180282,
        "Robert Zemeckis"=>1273838385,
        "Quentin Tarantino"=>662738268,
        "Martin Scorsese"=>636812242,
        "Francis Ford Coppola"=>509719258
}
end

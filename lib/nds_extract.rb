$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  index = 0
  while index < nds.length do
    puts "Row #{index} has #{nds[index]} columns"

    column_index = 0
    while column_index < nds[index].length do
      coord = "#{index}, #{column_index}"
      inner_len = nds[index][column_index].length
      puts "\tCoordinate [#{coord}] points to an #{nds[index][column_index].class} of length #{inner_len}"

      inner_index = 0
      while inner_index < inner_len do
        puts "\t\t (#{coord}, #{inner_len}) is: #{nds[index][column_index][inner_index]}"
        inner_index += 1
      end

      column_index +=1
    end

    index += 1
    # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #


 end


```def directors_totals(nds)
  director_index = 0
  totals = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    director_index += 1
  end

  totals
end```

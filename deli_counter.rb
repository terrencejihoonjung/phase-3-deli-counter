require 'pry'

def line(deli)
    if deli.empty? 
        puts "The line is currently empty." 
    else
        list = deli.each_with_index.map do |person, index|
            "#{index + 1}. #{person}"
        end
        list_string = list.join(" ")
        puts "The line is currently: #{list_string}"
    end
end

def take_a_number(deli, new_person)
    if deli.empty?
        deli << new_person
        puts "Welcome, #{new_person}. You are number #{1} in line."
    else
        deli << new_person
        puts "Welcome, #{new_person}. You are number #{deli.length} in line."
    end
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{deli[0]}."
        deli.shift
    end
end
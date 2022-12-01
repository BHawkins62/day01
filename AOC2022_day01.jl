# Day 1
# written in Julia

# Part One

open("input.txt") do file
    calories = 0
    max_calories = 0
    for line ∈ eachline(file)
        if (line != "")
            line = parse(Int64, line)
            calories += line
        end
        if (line == "" || eof(file))
            calories > max_calories ? (max_calories = calories) : (calories)
            calories = 0
        end
    end
    println(max_calories)
end

# Part Two

open("input.txt") do file
    calories = 0
    elves = []
    for line ∈ eachline(file)
        if (line != "")
            line = parse(Int64, line)
            calories += line
        end
        if (line == "" || eof(file))
            push!(elves, calories)
            calories = 0
        end
    end
    sort!(elves, rev=true)
    println(sum(+,(elves[1], elves[2], elves[3])))
end
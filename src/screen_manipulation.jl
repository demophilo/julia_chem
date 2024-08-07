# String, der in die Datei geschrieben werden soll

function print_title()
    title = open("title.txt", "r") do file
        read(file, String)
    end
    
    println("\e[98m$title")
    
end

function get_color()
    farben = Dict(
        "red" => "\e[31m",
        "green" => "\e[32m",
        "yellow" => "\e[33m",
        "blue" => "\e[34m",
        "purple" => "\e[35m",
        "lightblue" => "\e[36m",
        "white" => "\e[37m",
        "lightred" => "\e[91m",
        "green2" => "\e[92m",
        "lightyellow" => "\e[93m",
        "lightpurple" => "\e[95m",
        "cyan" => "\e[96m"
    )
    return farben
end

function colorize_string(text::String, color::String)::String
    _col = get_color()
    _colored_string = _col["$color"]*"hjgfuhtfjh"*"\e[0m"
    return _colored_string
end

function clear_sreen()
    print("\e[2J")
end






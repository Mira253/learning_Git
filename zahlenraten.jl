# zahlenraten.jl
println("Willkommen beim Zahlenratespiel!")

geheimzahl = rand(1:100)
versuche = 0
gefunden = false

while !gefunden
    print("Gib eine Zahl zwischen 1 und 100 ein: ")
    eingabe = parse(Int, readline())
    versuche += 1

    if eingabe < geheimzahl
        println("Zu klein!")
    elseif eingabe > geheimzahl
        println("Zu groß!")
    else
        println("Richtig! Du hast $versuche Versuche gebraucht.")
        gefunden = true
    end
end

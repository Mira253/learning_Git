# zahlenraten.jl
println("Willkommen beim Zahlenratespiel!")

function spiel()
    geheimzahl = rand(1:100)  # Zufallszahl zwischen 1 und 100
    versuche = 0  # Startwert für Versuche
    gefunden = false  # Flag, das angibt, ob die Zahl gefunden wurde

    while !gefunden
        print("Gib eine Zahl zwischen 1 und 100 ein: ")
        flush(stdout)  # Sicherstellen, dass der Prompt korrekt angezeigt wird
        eingabe = readline()  # Liest die Benutzereingabe als String ein
        if isempty(eingabe)  # Falls nichts eingegeben wird, nochmal abfragen
            println("Bitte eine gültige Zahl eingeben.")
            continue  # Überspringt den Rest und fragt erneut
        end

        try
            eingabe = parse(Int, eingabe)  # Versuche, die Eingabe in eine Zahl zu konvertieren
        catch e
            println("Ungültige Eingabe! Bitte eine Zahl zwischen 1 und 100 eingeben.")
            continue  # Falls die Eingabe keine Zahl ist, wiederholen
        end

        versuche += 1  # Erhöhe die Versuche

        if eingabe < geheimzahl
            println("Zu klein!")
        elseif eingabe > geheimzahl
            println("Zu groß!")
        else
            println("Richtig! Du hast $versuche Versuche gebraucht.")
            gefunden = true  # Zahl gefunden, Spiel beendet
        end
    end
end

# Start des Spiels
spiel()

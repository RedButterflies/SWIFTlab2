//
//  main.swift
//  SWIFTlab2
//
//  Created by admin on 11/16/23.
//

import Foundation
//zadanie1
print("Wprowadz bok szescianu: ")
var bokS = Double(readLine()!)!
var poleC = 6*pow(bokS,2)
var objS = pow(bokS,3)
print(String(format:"Pole szescianu: %.2lf,objetosc szescianu: %.2lf",poleC,objS))
//zadanie2
print("Podaj wymiar a:")
var a = Double(readLine()!)!
print ("Podaj wymiar b:")
var b = Double(readLine()!)!
print("Podaj wymiar z:")
var z = Double(readLine()!)!
print("Podaj wymiar s: ")
var s = Double(readLine()!)!
print("Podaj cene listwy za metr biezacy: ")
var cenaZaMetr = Double(readLine()!)!

var ileMetrow = a*b + z*b - 2*s
var jakiKoszt = ileMetrow*cenaZaMetr
print(String(format:"Potrzeba %.2lf metrow biezacych listwy i zaplaci sie za to %.2lf",ileMetrow,jakiKoszt))
//zadanie3
var tablicaB: [Int] = Array()
var liczbaA = Int.random(in: 1..<9)
var liczbaB = Int.random(in: 1..<9)
var liczbaC = Int.random(in:1..<9)
tablicaB.append(liczbaA)
tablicaB.append(liczbaB)
tablicaB.append(liczbaC)
print("Wylosowane liczby")
for i in tablicaB
{
    print(i)
    
}
var sumaB = tablicaB.reduce(0,+)
var sredniaB =
Double(sumaB)/Double(tablicaB.count)
print(String(format:"Srednia arytmetyczna: %.2lf",sredniaB))
//zadanie4
var tablicaOcen : [Double] = []
var tablicaWag : [Int] = []
for i in stride (from:0,to:3,by:1)
{
    print("Wprowadz ocene nr \(i): ")
    let ocena = Double(readLine()!)!
    tablicaOcen.append(ocena)
    print("Wprowadz wage dla oceny nr \(i)")
    let waga = Int(readLine()!)!
    tablicaWag.append(waga)
}
var suma = 0.0
for i in stride(from:0,to:3,by:1)
{
    suma+=tablicaOcen[i]*Double(tablicaWag[i])
}
var sumaWag = tablicaWag.reduce(0,+)
var sredniaWazona = suma/Double(sumaWag)
print(String(format:"Srednia wazona wprowadzonych ocen wynosi: %.2lf",sredniaWazona))
//zad5
var lancuchJenden = " Aleksandra Olejarz "
var lancuchDrugi = """
\n \" \t Stary niedzwiedz mocno spi,\n Stary niedzwiedz mocno spi \n My sie go boimy \n na palcach chodzimy \n Jak sie zbudzi to nas zje \"
"""
print ("lancuch jednoliniowy: \(lancuchJenden)")
print ("Lancuch wieloliniowy: \(lancuchDrugi)")
//zad6
let tekst = "\n\t\n\"Nauka kodowania to nie tylko nauka jezyka technologii.\n \t \nTo odkrywanie nowych sposobow myslenia\n \t \ni urzeczywistnianie rozmaitych koncepcji.\"  \n"
print(tekst)
//zad7
print("Wprowadz imie: ")
var imie = readLine()!
print("Wprowadz drugie imie: ")
var drugieImie = readLine()!
print("Wprowadz nazwisko: ")
var nazwisko = readLine()!
print("Wprowadz rok urodzenia: ")
var rokUr = readLine()!
var ciag = "Imie: "+imie + " Drugie imie: "+drugieImie+" Nazwisko: "+nazwisko+" Rok urodzenia: "+rokUr
print("Dane uzytkownika: \(ciag)")
var granice = ciag.index(ciag.startIndex,offsetBy: 6+imie.count)..<ciag.index(ciag.endIndex,offsetBy: -(rokUr.count+16+nazwisko.count+11))
ciag.removeSubrange(granice)
print("Ciag bez drugiego imienia: \(ciag)")
var wiekOsoby = 2023 - Int(rokUr)!
var wiekCiag = "Ososba ma \(wiekOsoby) lat"
var noweGranice = ciag.index(ciag.endIndex,offsetBy: -(rokUr.count+15))..<ciag.endIndex
ciag.removeSubrange(noweGranice)
ciag+=wiekCiag
print("Ciag po usunieciu roku i dodaniu wieku: \(ciag)")
if(imie.starts(with: "D")){
    print("Imie osoby zaczyna sie od litery D")
}
else{
    
print("Imie osoby nie zaczyna sie od litery D")
}

//
//  main.swift
//  bilgeadam
//
//  Created by IOS 3401 on 20/02/16.
//  Copyright © 2016 IOS 3401. All rights reserved.
//

import Foundation

//İstersek sonlarına ; koyabiliyoruz.
print("Merhaba!")

var myVar:Float = 30
var myVar2 = 30.0  //Bunun oto. olarak double olduğunu anlıyor. Default'u double'dır.
let myConst = 7  //Constant
print(myVar)

var myFloat:Float = 3.14

//Farklı tipler birlikte işlem yapamaz. O yüzden tip dönüşümü yapıp işlem yapmamız gerekir.
var result:Float = myFloat + Float(myConst)
print(result)

let apples = 30
let oranges = 20
let appleSummary = "\(apples) tane elma var"
let fruitSummary = "\(apples + oranges) tane meyve var"
print(appleSummary)
print(fruitSummary)


for i in 0..<10 {  //.. -> 0'dan başla 10'a kadar git. 10 dahil değil.
    print(i)
}

var birListe = ["sıra", "masa", "kapı", "dolap", "kitap", "çanta"]
for eleman in birListe{
    print(eleman, terminator:",")  //terminator ekleterek bitişik yaz vs. işler yapabiliyoruz.
}

print("")

print(birListe[3])

print("---")

//Dictionary - key&value -> Dictionary'de listede olanın aksine elemanların sırası yoktur. Print ettiğimizde ilk önce Serkan keyli elemanı yazacak diye şart yok.
var meslekler = [
    "Serkan": "Mühendis",
    "Gözde": "Ajan"
]

print(meslekler)

meslekler["Gözde"] = "Yazar"
print(meslekler)

print(meslekler["Serkan"])

print("---")

for meslek in meslekler{
    print(meslek.0)  //print(meslek.1) -> Sadece valuelar gelecektir.
}

print("---")

var notlar = [
    "Serkan": [10, 90, 50],  //value'su nesne
    "Gözde": [100, 0, 30]
]

for ogrenci in notlar{
    print(ogrenci.1[1])  //ogrenci.1 şu an bir liste. index ile elemenlarına ulaşabiliyoruz.
}

print(notlar["Serkan"]?[1])  //Serkan'ın 2. notu. ? -> Optional

print("---")

let skorlar = [23, 45, 10, 7, 6, 55, 10]
var takımSkoru = 0

for skor in skorlar{
    if skor > 40{
        takımSkoru += 3
    } else{
        takımSkoru += 1
    }
}
print(takımSkoru)

print("---")

var a = 10
var b = 2
var c = 9

if a + b > c && a - b < c{
    print("ok")
} else{
    print("asd")
}

print("---")

var optionalString: String? = "Selam"
print(optionalString == nil)

if let name = optionalString{  //tek = ile name' nil mi, değilse devam et gibi işler yapılabilir.
    print("asd")
}

print("---")

func hesapla (fiyat: Double, kdv_oran: Double) -> Double{
    let brut: Double = fiyat + fiyat * kdv_oran  //var olarak brut'u tanımlarsan sana let kullanmanı önerir. Namespace'in sonunda zaten return ediyorsun diyerek bunu let'e çevirmeyi önerir.
    return brut
}  //return type -> ile gösterilir.

print(hesapla(100, kdv_oran: 0.18)) //fonk. çalıştırırken değişken adı : value yazarak çalıştırırsın. Bu sayede sırasını değiştirerek fonk. çalıştırabilirsin?? Bak.

print("---")

//Fonksiyona yazılan parametrelerin ortalamasını bulan fonksiyon
func avg (nums: Int...) -> Int{
    var topla = 0
    
    for num in nums{
        topla += num
    }
    
    return topla / nums.count
}

print(avg(4,2,6))

print("---")

//var d = 0
//while d < 10{
//    d++
//}

//var e = 0
//repeat{
//    e++
//} while c < 10

print("---")

class Shape{
    var numOfSides = 0
    func about() -> String {
        return "\(numOfSides) tane kenarlı şekil."
    }
}

var shape = Shape() //Instance yarattık
shape.numOfSides = 7

var shapeAbout = shape.about()
print(shapeAbout)

print("---")

class NamedShape{
    var numOfSides: Int = 0
    var name: String
    
    init(name: String){  //init -> constructor
        self.name = name
    }
    //Birden fazla const. olursa const.'ı overload etmiş oluyoruz.
    
    //getter setter şart değil. 
    //Access identifier kullanılabilir.
    func getName() -> String{
        return self.name
    }
    func setName(name: String){
        self.name = name
    }
    
    func about() -> String{
        return "\(numOfSides) tane kenarı olan şekil"
    }
    
    func yazdir(){
        print(self.about())
    }
}

var sekil = NamedShape(name: "Kare")
sekil.numOfSides = 4

print(sekil.about())
sekil.yazdir()

sekil.setName("Oval")
print(sekil.getName())

print("---")

//Ödev
var rnd = rand()%10+1;
print(rnd)

func generateRnd() -> Double{
    let random = Double(arc4random())/Double(UInt32.max)
    return random
}

var sayac = 0

for i in 1..<6{

    var x = generateRnd()
    var y = generateRnd()
    
    if(x*x + y*y < 1){
        sayac++
    }
    
    print(x, y)
}

print(sayac/5)






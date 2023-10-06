// 1


print("task 1:")

enum DayOfWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}


func checkDay(weekDay: DayOfWeek) {
    
    switch weekDay {
    case .saturday, .sunday:
        print("Weekend")
    case .friday, .monday , .tuesday, .wednesday, .thursday:
        print("work days")
    }
    
}

checkDay(weekDay: .friday)
checkDay(weekDay: .sunday)

print()


// 2


print("task 2:")

enum weather {
    case sunny(temp: Double)
    case cloudy(temp: Double)
    case rainy(temp: Double)
    case snowy(temp: Double)
}


func whatToWear(weatherTemp: weather) {
    
    switch weatherTemp {
    case .sunny(let temp):
        if temp > 30 {
            print("wear a T-Shirt")
        } else {
            print("wear comfortable clothes")
        }
    case .cloudy(let temp):
        if temp > 20 {
            print("wear a jacket")
        } else {
            print("wear a hoodie")
        }
    case .rainy(let temp):
        if temp > 15 {
            print("wear a hoodie")
        } else {
            print("wear a raincoat")
        }
    case .snowy(let temp):
        if temp > 5 {
            print("wear a heavy jacket")
        } else {
            print("wear a thermal shirt")
        }
    }
}

let sunnyWeather = weather.sunny(temp: 45)
let cloudyWeather = weather.cloudy(temp: 25)
let rainyWeather = weather.rainy(temp: 10)
let snowyWeather = weather.snowy(temp: 0)


whatToWear(weatherTemp: sunnyWeather)
whatToWear(weatherTemp: cloudyWeather)
whatToWear(weatherTemp: rainyWeather)
whatToWear(weatherTemp: snowyWeather)

print()


// 3


print("task 3:")

struct Book: CustomStringConvertible {
    var title: String
    var author: String
    var publicationYear: Int
    
    var description: String {
        return "\(title) by \(author), published in \(publicationYear)"
    }
    
}


let vefxistyaosani = Book(title: "vefxistyaosani", author: "shota rustaveli", publicationYear: 1712)

let mtvarismotaceba = Book(title: "mtvarismotaceba", author: "konstantine gamsaxurdia", publicationYear: 1936)

let metamorfoza = Book(title: "metamorfoza", author: "Franz Kafka", publicationYear: 1915)

var bookArr: [Book] = [vefxistyaosani, mtvarismotaceba, metamorfoza]

func bookYears(bookArray: [Book], bookYear: Int) -> [Book] {
    
    let newBookArr = bookArray.filter { $0.publicationYear > bookYear }
    return newBookArr
}


var newBooks =  bookYears(bookArray: bookArr, bookYear: 1900)
print(newBooks)
print()


// 4


print("task 4:")

struct BankAccount {
    var holderName: String
    var accountNumber: Int
    var balance: Double
    
    
    mutating func depositMoney(amount: Double) {
        balance += amount
        print("\(holderName) your updated balance is \(balance)")
    }
    
    mutating func withdrawMoney(amount: Double) {
        if (amount > balance) {
            print("\(holderName) you can't withdraw money, there is not enough money on your balance")
        } else if (amount < 0) {
            print("wrong amount")
        } else {
            balance -= amount
            print("\(holderName) your updated balance is \(balance)")
        }
    }
}

var myAccount = BankAccount(holderName: "Levaniko", accountNumber: 1983, balance: 1200)

myAccount.depositMoney(amount: 50)

myAccount.withdrawMoney(amount: 1000)

myAccount.withdrawMoney(amount: 300)

myAccount.withdrawMoney(amount: -2)

print()


// 5


print("task 5:")
enum Genre {
    case rock
    case pop
    case hiphop
    case Jazz
    case Techno
}

struct Song: CustomStringConvertible {
    var title: String
    var artist: String
    var duration: Double
    var genre: Genre
    
    var description: String {
        return "Title is \(title) by \(artist), genre is \(genre), duration: \(duration)"
    }
    
    lazy var publisher: String? = {
        if self.genre == .rock {
            return "Publisher \(artist)"
        } else {
            return nil
        }
    }()
    
}


var song1 = Song(title: "Live And Let Die", artist: "Guns N' Roses", duration: 3.03, genre: .rock)

var song2 = Song(title: "Would?", artist: "Alice In Chains", duration: 3.27, genre: .rock)

var song3 = Song(title: "Catchin'The Vibe", artist: "Quasimoto", duration: 2.43, genre: .hiphop)

var song4 = Song(title: "Earth", artist: "MF Grimm", duration: 4.23, genre: .hiphop)

var myPlaylist: [Song] = [song1,song2,song3,song4]



func pickGenre(playlistArr: [Song], genre: Genre) -> [Song] {
    
    let oneGenreArr = playlistArr.filter {
        $0.genre == genre
    }
    
    return oneGenreArr
}


print(pickGenre(playlistArr: myPlaylist, genre: .rock))






// 1


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



// 2


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


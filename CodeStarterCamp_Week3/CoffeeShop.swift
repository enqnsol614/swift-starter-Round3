import Foundation

enum Coffee: String {
    case americano = "아메리카노"
    case cafeLatte = "카페라떼"
    case cappuccino = "카푸치노"

    var orderMenu: String {
        return self.rawValue
    }
}

class Person {
    var name: String = ""
    var money: Int = 0

    func buyCoffee(coffeeShop: CoffeeShop, coffee: Coffee) {
        if let price = coffeeShop.menu[coffee] {
            if money >= price {
                money = money - price
                coffeeShop.makeCoffee(coffee: coffee)
            }
        }
    }
}

class CoffeeShop {
    var shopName: String = ""
    var menu: [Coffee: Int] = [:]
    var revenue: Int = 0
    var pickUpTable: [Coffee] = []
    var barista: Person?

    func assignBarista(barista: Person) {
        self.barista = barista
        print("\(shopName)을 담당하는 바리스타는 \(barista.name)입니다.")
    }
    
    func makeCoffee(coffee: Coffee) {
        if let price = menu[coffee] {
            revenue += price
            pickUpTable.append(coffee)
            print("바리스타 \(barista?.name ?? "바리스타")가 \(coffee.orderMenu)를 만들어 픽업 테이블에 올려놨습니다.")
        } else {
            print("\(coffee.orderMenu)는 메뉴에 없습니다.")
        }
    }
}

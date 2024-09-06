//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let misterLee = Person()
misterLee.name = "misterLee"
misterLee.money = 3000

let missKim = Person()
missKim.name = "missKim"
missKim.money = 20000

let menu: [Coffee: Int] = [
    .americano: 5000,
    .cafeLatte: 6000,
    .cappuccino: 7000
]

let yagombucks = CoffeeShop()
yagombucks.shopName = "yagombucks"
yagombucks.menu = menu

yagombucks.assignBarista(barista: misterLee)
missKim.buyCoffee(coffeeShop: yagombucks, coffee: .cafeLatte)
misterLee.buyCoffee(coffeeShop: yagombucks, coffee: .americano)

print("\(yagombucks.shopName)의 매출은 \(yagombucks.revenue)원입니다.")

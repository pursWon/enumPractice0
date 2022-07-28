//
//  enumPractice0App.swift
//  enumPractice0
//
//  Created by MacBook Air on 2022/07/28.
//

import Foundation

// <원시값이 없는 열거형>

enum tottenHam1 {

    case romero
    case son
    case skipp
    case perisic

}

var defender: tottenHam1 = .romero
var wingForward: tottenHam1 = .son
var midfielder: tottenHam1 = .skipp
var wingBack: tottenHam1 = .perisic
//
// <원시값이 있는 열거형>

// 1. Int 타입

enum tottenham2: Int {

    case lloris = 1
    case doherty
    case reguilon
    case davies = 33
    case lenglet

}

var goalkeeper: tottenham2 = .lloris
var rightWingback: tottenham2 = .doherty
print(goalkeeper)

// 2. Character 타입

enum english: Character { // 하나라도 rawValue가 없을 시 오류 발생
    case d = "D"
    case v = "V"
    case o = "O"
    case k = "K"
}

let dd: english = .d
let vv: english = .v


print("\(dd) <---> \(dd.rawValue)")
print("\(vv) <---> \(vv.rawValue)")

// 3. String 타입

enum fruit: String {
    case apple
    case pear
    case mango = "applemango"
    case melon
}

let eat1: fruit = .apple
let eat2: fruit = .pear
let eat3: fruit = .mango

print(eat1) // rawValue를 지정해주지 않아서 case이름과 동일한 apple이 나온다.
print("\(eat1.rawValue)")
print(eat3) // mango
print("\(eat3.rawValue)") // rawValue인 applemango가 나온다.

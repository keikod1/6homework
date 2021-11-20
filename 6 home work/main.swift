//
//  main.swift
//  6 home work
//
//  Created by my macbook on 18/11/21.
//

import Foundation

print("registr/ log in")

var account: [String: Int] = [
    "keiko": 123456,
    "dasi": 098765,
    "nurs": 066986,
    "emir": 567890,
]

var username = readLine()!


var newusername = true
var newpassword = true
var open = true

switch username{
case "registr":
    print("введите имя пользователя")
    let registrusername = readLine()!
for (key, value) in account{
if registrusername == key {
    newusername == true
    print("user name занят!")
    print("попробуйте другой")
    var registr = readLine()
    
}else{
    newusername == false
}
}
print("успешно введите пароль:")
    let password: String = readLine()!
    if (password.count > 5 && !password.isEmpty){
        print("успешно зарегистрировались!")
    }else{
        print("введите более 6 символов")
    }
case "log in":
    print("введите имя пользователя")
    let openusername = readLine()
    for (key, value) in account{
    if openusername == key {
        open == true
        print("user name найден введите пароль:")
    }else{
        open == false
    }
    }
    let password = readLine()
    for (key,value) in account{
    if (Int (password!) ?? 0) == value{
        newpassword == true
        print("вы вошли в аккаунт:")
        break
    }else{
        newpassword == false
        print("неверный пароль")
            }
        }
default:
    print("error")
}






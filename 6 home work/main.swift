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
var newUserNameField = ""
var test2 = true

func registr(){
    print("введите имя пользователя")
let registrusername = readLine()!
    
for (key, _) in account {
    if registrusername == key{
    newusername == false
    print("user name занят!")
    print("попробуйте другой")
    var newUsernameReadLine = readLine()!
    newUserNameField = newUsernameReadLine
    return registr()
    test2 = false
    break
}else{
    test2 == true
}
}

    var test = true
    while test {
    print("Введите пароль")
    var password: String = readLine()!
        
    if (password.count > 5 && !password.isEmpty && test2){
        account.updateValue(Int(password) ?? 0, forKey: registrusername)
        print("успешно зарегистрировались!")
        print(account)
        test = false
        
    }else if (password.count > 5 && !password.isEmpty && !test2){
        account.updateValue(Int(password) ?? 0, forKey: newUserNameField)
        
        print("успешно зарегистрировались!")
        print(account)
        test = false
    }else{
            print("введите более 6 символов")
        }

    }
}

switch username{
case "registr":
    registr()
case "log in":
    print("введите имя пользователя")
    let openusername = readLine()
    for (key, _) in account{
    if openusername == key {
        open == true
        print("user name найден введите пароль:")
    }else{
        open == false
        
    }
    }
    let password = readLine()
    for (_,value) in account{
    if (Int (password!) ?? 0) == value{
        newpassword == true
        print("вы вошли в аккаунт:")
        break
    }else{
        newpassword == false
        
            }
        }
default:
    print("error")
}



print(account)







//
//  main.swift
//  UnknownNumber
//
//  Created by Татьяна on 25.04.2024.
//

import Foundation
let randomNumber = UInt8(arc4random_uniform(50))

print("Компьютер случайным образом загадал число. Вам требуется его отгадать.")

var myNumber: String?
repeat {
	print("Введите ваш вариант числа")
	myNumber = readLine()
	guard let myNumber = myNumber, let myNumberInt8 = UInt8(myNumber) else {
		print("Некорректный ввод числа")
		continue
	}
	if myNumberInt8 == randomNumber {
		print("Вы угадали")
	} else if myNumberInt8 < randomNumber {
		print("Загаданное число больше")
	} else if myNumberInt8 > randomNumber {
		print("Загаданное число меньше")
	}
} while UInt8(myNumber!) != randomNumber

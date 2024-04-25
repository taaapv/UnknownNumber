//
//  main.swift
//  UnknownNumber
//
//  Created by Татьяна on 25.04.2024.
//

import Foundation
let randomNumber = String(arc4random_uniform(5))

print("Компьютер случайным образом загадал число. Вам требуется его отгадать.")

var myNumber: String?
repeat {
	print("Введите ваш вариант числа")
	myNumber = readLine()
	guard let myNumber = myNumber else {
		print("Некорректный ввод числа")
		continue
	}
	if myNumber < randomNumber {
		print("Загаданное число больше")
	} else if myNumber > randomNumber {
		print("Загаданное число меньше")
	}
} while myNumber != randomNumber
print("Вы угадали")

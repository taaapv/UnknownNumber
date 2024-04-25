//
//  main.swift
//  UnknownNumber
//
//  Created by Татьяна on 25.04.2024.
//

import Foundation
let randomNumber = String(arc4random_uniform(5))
print("Компьютер случайным образом загадал число. Вам требуется его отгадать.")

let message = [
	"start": "Введите ваш вариант числа",
	"more": "Загаданное число больше",
	"less": "Загаданное число меньше",
	"win": "Вы угадали"
]
var userNumber: String = ""

repeat {
	print(message["start"] ?? "")
	let myNumber = readLine()
	userNumber = myNumber ?? ""

	if userNumber < randomNumber {
		print(message["more"] ?? "")
	} else if userNumber > randomNumber {
		print(message["less"] ?? "")
	}
} while userNumber != randomNumber
print(message["win"] ?? "")

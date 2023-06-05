/*Every year the yield increases by 5%. Write an algorithm that will calculate in how many years the harvest will double?
 Каждый год урожайность повышается на 5%. Написать алгоритм, который рассчитает через сколько лет урожай удвоится?*/

var startKgInYear = 20.0
var kgInYear = 20.0
var yearIndex = 0

repeat {
    kgInYear = kgInYear + (kgInYear * 5) / 100
    yearIndex += 1
} while (startKgInYear * 2) > kgInYear

print(yearIndex)

/*Display all prime numbers up to the specified one.
 Вывести на экран все простые числа до заданного.*/

let myNumber = 100
print("2")
print("3")
print("5")
for i in 3...myNumber {
    if i % 2 != 0 && i % 3 != 0 && i % 5 != 0 { print(i) }
}

/*Determine whether the entered word is a "shifter". Output a verbal response.
 Определить, является введенное слово «перевертышем» (потоп, казак). Вывести словесный ответ.*/

var myWord = "pool"

repeat {
    if myWord[myWord.startIndex] == myWord[myWord.index(before: myWord.endIndex)] {
        myWord.remove(at: myWord.startIndex)
        myWord.remove(at: myWord.index(before: myWord.endIndex))
    } else {
        break
    }
} while myWord != ""
if myWord == "" {
    print("Yes")
} else {
    print("No")
}

/*Given a string consisting of opening and closing parentheses in an arbitrary sequence. Check the spelling of the parentheses so that each opening parenthesis is closed.
 Дана строка, состоящая из открывающихся и закрывающихся круглых скобок в произвольной последовательности. Проверить правильность написания круглых скобок, чтобы каждая открывающаяся скобка была закрыта.*/

var myString = "(()))("
var countOpen = 0
var countClose = 0

for index in myString.indices {
    if countOpen >= countClose {
        if myString[index] == "(" {
            countOpen += 1
        } else if myString[index] == ")" {
            countClose += 1
        } else {
            continue
        }
    } else {
        break
    }
}

if countOpen == countClose { print("Ok")} else { print("No")}

/*Given a string consisting of opening and closing parentheses, square and curly in an arbitrary sequence. Check the spelling of the brackets so that each opening bracket is closed with the appropriate type of closing bracket.
 Дана строка, состоящая из открывающихся и закрывающихся круглых скобок, квадратных и фигурных в произвольной последовательности. Проверить правильность написания скобок, чтобы каждая открывающаяся скобка была закрыта соответствующим типом закрывающейся скобки.*/

var myString = ""
var countOpen = 0
var countClose = 0
var container1 = ""
var container2 = ""
var container3 = ""


for index in myString.indices{
    if myString[index] == "(" || myString[index] == ")"{
        container1.append(myString[index])
    } else if myString[index] == "[" || myString[index] == "]"{
        container2.append(myString[index])
    } else if myString[index] == "{" || myString[index] == "}"{
        container3.append(myString[index])
    }

    if container1 == "()" {
        container1 = ""
    } else if container2 == "[]"{
        container2 = ""
    } else if container3 == "{}"{
        container3 = ""
    }
}

if container1.isEmpty && container2.isEmpty && container3.isEmpty {
    print("Ok")
} else { print("No")}

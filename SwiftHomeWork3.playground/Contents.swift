import UIKit
import Foundation

/*Generate an array of 100 random numbers and sort it with all the combinations you know.
 Сгенерировать массив из 100 случайных чисел и отсортировать его всеми известными вам способами.*/

var array = (1...100).map( {_ in Int.random(in: 1...100)} )
print(array)
array.sorted()

//or

func smallestNumber (array: [Int]) ->  (smallNumber: Int, array : [Int]) {
    var smallNumber = 100
    var smallIndex = 0
    var newArray: [Int] = array
    for index in array.indices {
        if array[index] < smallNumber {
            smallNumber = array[index]
            smallIndex = index
        }
    }
    newArray.remove(at: smallIndex)
    return (smallNumber, newArray)
}


var sortedArray: [Int] = []

while array.count != 0 {
    var functionArray = smallestNumber(array: array)
    sortedArray.append(functionArray.smallNumber)
    array = functionArray.array
}
print(sortedArray)


/*Write two functions: translation from decimal to hexadecimal and back.
 Написать две функции: перевод из десятичной системы в шестнадцатеричную и обратно.*/

func fromTenToSixteen (number: Int) -> String {
    let myInt: String = String(number, radix: 16)
    return myInt
}

func fromSixteenToTen (number: String) -> UInt {
    let string = "ff"
    let myInt = UInt(string, radix: 16)!
    return myInt
}


/*Imagine that you are a teacher of chess courses. Your classes are attended by three students.
 Create a dictionary that will contain information about your students and their progress. The dictionary key should be the last name, and the value should be another dictionary containing the date of the lesson and the grade received in this lesson.
 The dictionary data type should be [String:[String:UInt]].
 Your electronic journal should contain two grades for each of the three students. Come up with the names, dates of classes and grades yourself.
 Calculate the average score of each student and the average score of the entire group and display all the information received on the console.
 Представьте, что вы являетесь преподавателем курсов по шахматам. Ваши занятия посещают три ученика.
 Создайте словарь, который будет содержать информацию о ваших студентах и об их успехах. Ключом словаря должна быть фамилия, а значением — другой словарь, содержащий дату занятия и полученную на этом занятии оценку.
 Тип данных словаря должен быть [String:[String:UInt]].
 В вашем электронном журнале должно находиться по две оценки для каждого из трех учеников. Фамилии, даты занятий и оценки придумайте сами.
 Посчитайте средний балл каждого студента и средний балл всей группы целиком и выведите всю полученную информацию на консоль.*/

var myStudents: [String:[String:Int]] = ["Petrov":[:], "Ivanov":[:], "Pupkin":[:]]
myStudents["Petrov"] = ["1 may":4, "2 may":5]
myStudents["Ivanov"] = ["1 may":3, "2 may":4]
myStudents["Pupkin"] = ["1 may":2, "2 may":2]


var res = 0
var fin = 0.0
var markCount = 0

var totalRes = 0
var totalFin = 0.0
var totalMarkCount = 0

for key in myStudents.keys{
    for (_, value) in myStudents[key]! {
        res += value
        markCount += 1
        totalMarkCount += 1
        totalRes += value
    }
    fin = Double(res) / Double(markCount)
    print("Mark for \(key) is \(fin)")
    res = 0
    fin = 0.0
    markCount = 0
}
totalFin = Double(totalRes) / Double(totalMarkCount)
print("All class result is \(totalFin)")

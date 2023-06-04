/*An array of 10 integers is given. Find the product of positive. As well as the sum and number of negative numbers.
Дан массив из 10 целых чисел. Найти произведение положительных. А также сумму и количество отрицательных чисел. */

var arrayNumbers = [1, 2, -3, 4, 5, 6, -7, 8, 9, 1]
var sumNegative = 0
var countNegative = 0
var positiveNombers = 1
for i in arrayNumbers {
    if i < 0 {
        countNegative += 1
        sumNegative += i
    } else {
        positiveNombers = positiveNombers * i
        print(positiveNombers)
    }
}
print("Product of positive numbers - \(positiveNombers), number of negative numbers - \(countNegative), sum of negative numbers \(sumNegative)")




/* From the N integers written in the array, find the minimum value.
 Из N целых чисел, записанных в массиве, найти минимальное значение. */

var arrayNumbers = [1, 2, -3, 4, 5, 6, -7, 8, 9, 1]
func findMin () {
    arrayNumbers.sort()
    print(arrayNumbers[0])
}

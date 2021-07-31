//
//  ViewController.swift
//  homework2
//
//  Created by  Yaroslav on 27.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    //    1. Создать 4 универсальных функции сложения, вычитания, умножения и деления(используя перегрузку функций) Т.е будет 4 функции с одинаковыми названиями, но ,например, разными именами параметров. По итогу функция должна выводить в консоль результат операций
    //    2. Создать функцию, которая будет вычислять сумму цифр четырехзначного числа. Т.е функция должна иметь параметр с типом Int. Также функция должна содержать проверку на то что число действительно четырехзначное. По итогу функция должна выводить в консоль сумму цифр четырехзначного числа
    //    3. Создать функцию, которая будет возводить число в степень. Т.е функция должна содержать два параметра: число и степень. По итогу она должна выводить результат в консоль.
    //    4. Создать функцию, которая будет вычислять факториал числа. Т.е функция должна содержать один параметр с типом Int(но можно и не один). По итогу она должна выводить результат в консоль.
    //
    
    //    Домашнее задание 5. Создать массив из кортежей, первый элемент в котором будет Int, а второй String. Нужно возвести все числа в квадрат, затем отфильтровать и оставить только четные числа, а в конце отсортировать по увеличению строк. То есть начальный массив кортежей должен выглядеть так
    //    [(1,"x"), (3,"z"), (2, "y"), (4, "a")]
    //    А в результате должно получиться так:
    //    [(16, "a"), (4, "y")]
    //
    //    И сделайте это все как функцию, которая принимает параметр и возвращает значение
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //      задание 1
        result(x: 2, y: 2)
        
        
        
        //      задание 2
        
        summ(value: 3555)
        
        
        
        //      задание 3
        stepen(num: 3, power: 3)
        
        
        
        //      задание 4
        //        print(factorial(6))
        
        
        //задание 5
        
        let massive: [(firstName: Int, lastName: String)] = [(32, "Yaroslav"), (31, "Vladislav"), (30, "Dima")]
        
        print(masAgePow(value: massive))
        
    }
    
    // Задание 1
    
    func result(x: Int, y: Int) {
        print(x+y)
    }
    func result(t: Int, g: Int) {
        print(t-g)
    }
    func result(u: Int, i: Int) {
        print(u*i)
    }
    func result(f: Int, g: Int) {
        if g == 0 {
            print("erorr")
        } else {
            print(f/g)
        }
    }
    
    //задание 2
    
    func summ (value:Int) {
        if value > 999 && value < 10000 {
            let x = value % 10
            let y = (value / 10) % 10
            let z = (value / 100) % 10
            let e = (value / 1000) % 10
            let sum = x + y + z + e
            print(sum)
        } else { print("error")
            
        }
    }
    
    
    //задание 3(что за decimal?)
    
    func stepen (num: Int, power: Int) {
        let rrr = pow(Decimal(num), power)
        
        print(rrr)
    }
    
    //задание 4
    //    тупо копия инет
    func factorial(n: Int) -> Int{
        
        if n == 0 {
            return 1
        }
        return n * factorial(n: n-1)
    }
    
    //задание 5
    
    
    func masAgePow(value: [( firstName:Int, lastName:String)]) -> [(Int, String)] {
        let masAgePow = value.map { (firstName: Int, lastName: String) in
            return ((firstName * firstName), lastName)
        }
        
        let filterAges = masAgePow.filter { age  in
            age.0 % 2 == 0
            
        }
        
        let massivStringSort = filterAges.sorted { one, two in
            return one.0 < two.0
        }
        
        return massivStringSort
        
        
        
    }
    
    
}





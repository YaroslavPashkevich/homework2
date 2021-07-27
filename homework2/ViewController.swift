//
//  ViewController.swift
//  homework2
//
//  Created by  Yaroslav on 27.07.21.
//

import UIKit

class ViewController: UIViewController {

    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      задание 1
        result(x: 2, y: 2)

        
        
//      задание 2
//      summNumber(numm: 2555)
        print(digitSum(3555))
      
        
        
//      задание 3
        stepen(num: 3, power: 3)
        
        
        
//      задание 4
        print(factorial(6))
     
        
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
    
    //задание 2 (выбивает еррор)

//    func summNumber(numm: Int){
//        let summX = [numm]
//        if numm > 999 && numm < 10000 {
//            print(summX[0] + summX[1] + summX[2] + summX[3])
//    } else { print("error")
//    }
//    }
    
//    тупо копия инет
    func digitSum(_ n : Int) -> Int {
        return sequence(state: n) { (n: inout Int) -> Int? in
                defer { n /= 10 }
                return n > 0 ? n % 10 : nil
            }.reduce(0, +)
    }
    
    
    
    //задание 3(что за decimal?)
    
    func stepen (num: Int, power: Int) {
        let rrr = pow(Decimal(num), power)
        
        print(rrr)
    }
   
    //задание 4
    //    тупо копия инет
    func factorial(_ n: Int) -> Int{

        if n == 0 {
            return 1
        }
        return n * factorial(n-1)
    }

    
    
    

}

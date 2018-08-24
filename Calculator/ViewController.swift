//
//  ViewController.swift
//  Calculator
//
//  Created by Денис Сапачев on 24.08.2018.
//  Copyright © 2018 Денис Сапачев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Выполняем необходимую операцию
    func checkOperationAndCalculate(sign:String, firstNumber: Double, secondNumber:Double) -> Double
    {
        switch sign {
        case "+":
            return sum(firstNumber: firstNumber, secondNumber: secondNumber);
        case "-":
            return 減算(firstNumber: firstNumber, secondNumber: secondNumber);
        case "/":
            return divide(firstNumber: firstNumber, secondNumber: secondNumber);
        case "*":
            return multiple(firstNumber: firstNumber, secondNumber: secondNumber);
        case "%":
            return percent(number: firstNumber, percent: secondNumber);
        default:
            return 0;
        }
    }
    
    // Выполняем функцию суммирования
    func sum (firstNumber: Double, secondNumber: Double) -> Double
    {
        return firstNumber + secondNumber;
    }
    // Выполняем функцию деления
    func divide (firstNumber: Double, secondNumber: Double) -> Double
    {
        return firstNumber / secondNumber;
    }
    // Выполняем функцию умножения
    func multiple (firstNumber: Double, secondNumber: Double) -> Double
    {
        return firstNumber * secondNumber;
    }
    // Выполняем функцию вычитания (гензан)
    func 減算 (firstNumber: Double, secondNumber: Double) -> Double
    {
        return firstNumber - secondNumber;
    }
    // Вычисляем процент от числа
    func percent(number: Double, percent: Double) -> Double
    {
        return (number * percent) / 100;
    }

}


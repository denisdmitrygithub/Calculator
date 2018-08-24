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
        switch sign
        {
            // Выполняем функцию суммирования
        case "+":
            return firstNumber + secondNumber;
            // Выполняем функцию вычитания
        case "-":
            return firstNumber - secondNumber;
            // Выполняем функцию деления
        case "/":
            return firstNumber / secondNumber;
            // Выполняем функцию умножения
        case "*":
            return firstNumber * secondNumber;
            // Вычисляем процент от числа
        case "%":
            return getPercent(number: firstNumber, percent: secondNumber);
        default:
            return 0;
        }
    }
    
    // Вычисляем процент от числа
    func getPercent(number: Double, percent: Double) -> Double
    {
        return (number * percent) / 100;
    }
}


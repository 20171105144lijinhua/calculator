//
//  ViewController.swift
//  calculator
//
//  Created by 李锦华 on 2018/9/28.
//  Copyright © 2018年 李锦华. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var temp:Double = 0.0
    var flag = 0
    var point:Double = 0.0
    var rw:Double = 0.0
    var seeagain = 0
    @IBOutlet weak var board: UITextField!
    

    @IBAction func NO1(_ sender: Any)
    {
        if seeagain == 1
            {
                board.text = board.text! + "1"
            }
            else
            {
                board.text = "1"
            }
        seeagain = 1
    }
    
    @IBAction func NO2(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "2"
        }
        else
        {
            board.text = "2"
        }
        seeagain = 1
        
    }
    
    @IBAction func N03(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "3"
        }
        else
        {
            board.text = "3"
        }
        seeagain = 1
        
    }
    
    
    @IBAction func NO4(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "4"
        }
        else
        {
            board.text = "4"
        }
        seeagain = 1
    }
    
    @IBAction func NO5(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "5"
        }
        else
        {
            board.text = "5"
        }
        seeagain = 1
        
    }
    
    @IBAction func NO6(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "6"
        }
        else
        {
            board.text = "6"
        }
        seeagain = 1
    }
    
    
    @IBAction func NO7(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "7"
        }
        else
        {
            board.text = "7"
        }
        seeagain = 1
        
    }
    
    
    @IBAction func NO8(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "8"
        }
        else
        {
            board.text = "8"
        }
        seeagain = 1
       
    }
    
    
    @IBAction func NO9(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "9"
        }
        else
        {
            board.text = "9"
        }
        seeagain = 1
        
    }
    
    
    @IBAction func NO0(_ sender: Any)
    {
        if seeagain == 1
        {
            board.text = board.text! + "0"
        }
        else
        {
            board.text = "0"
        }
        seeagain = 1
       
    }
    
    
   
    @IBAction func point(_ sender: Any)
    {
        board.text = board.text! + "."
        point = (board.text! as NSString).doubleValue
    }
    
    
    @IBAction func square(_ sender: Any)
    {
        temp = Double(board.text!)!
        temp = temp * temp
        board.text = "\(temp)"
    }
    
    
    
    @IBAction func calculator(_ sender: Any)
    {
        if(flag==1)
        {
            var sum:Double = 0
            sum = temp + Double(board.text!)!
            board.text  = "\(sum)"

        }
        if(flag==2)
        {
            var subtraction:Double = 0
            subtraction = temp - Double(board.text!)!
            board.text = "\(subtraction)"
        }
        if(flag==3)
        {
            var multiplication :Double = 0
            multiplication = temp * Double(board.text!)!
            board.text = "\(multiplication)"
        }
        if(flag==4)
        {
            var division :Double = 0
            division  = temp / Double(board.text!)!
            board.text = "\(division)"
        }
        seeagain = 2
    }
    
    @IBAction func reversion(_ sender: Any)
    {
        temp = Double(board.text!)!
       board.text = "\(temp * -1)"
    }
    
    
    @IBAction func sqrtt(_ sender: Any) {
        temp = Double(board.text!)!
        temp = sqrt(temp)
        board.text = "\(temp)"
    }
    
    @IBAction func add(_ sender: Any)
    {
        if flag == 1
        {
         board.text = "\(temp + Double(board.text!)!)"
        }
            temp = Double(board.text!)!
            seeagain = 2
            flag = 1
    }
    @IBAction func subtraction(_ sender: Any)
    {
        if flag == 2
        {
            board.text = "\(temp - Double(board.text!)!)"
        }
            temp = Double(board.text!)!
            seeagain = 2
            flag = 2

        
    }
    @IBAction func multiplication(_ sender: Any)
    {
        if flag == 3
        {
            board.text = "\(temp * Double(board.text!)!)"
        }
           temp = Double(board.text!)!
           seeagain = 2
           flag = 3
        
    }
    
   @IBAction func division(_ sender: Any)
   {
         if flag == 4
        {
            board.text = "\(temp / Double(board.text!)!)"
        }
           temp = Double(board.text!)!
           seeagain = 2
           flag = 4
    }
    @IBAction func clear(_ sender: Any) {
        board.text = ""
    }
    @IBAction func aclear(_ sender: Any) {
        temp = 0.00
        flag = 0
        seeagain = 0
        board.text = "0"
    }
    
}


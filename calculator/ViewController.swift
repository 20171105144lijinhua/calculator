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
    var flag:Double = 0
    var point:Double = 0.0
    var rw:Double = 0.0
    var wd = 0

    @IBOutlet weak var board: UITextField!
    
    
    @IBAction func NO1(_ sender: Any)
    {
    board.text = board.text!+"1"
        
    }
    
    @IBAction func NO2(_ sender: Any)
    {
        board.text = board.text!+"2"
        
    }
    
    @IBAction func N03(_ sender: Any)
    {
        board.text = board.text!+"3"
        
    }
    
    
    @IBAction func NO4(_ sender: Any)
    {
        board.text = board.text!+"4"
        
    }
    
    @IBAction func NO5(_ sender: Any)
    {
        board.text = board.text!+"5"
        
    }
    
    @IBAction func NO6(_ sender: Any)
    {
        board.text = board.text!+"6"
        
    }
    
    
    @IBAction func NO7(_ sender: Any)
    {
        board.text = board.text!+"7"
        
    }
    
    
    @IBAction func NO8(_ sender: Any)
    {
        board.text = board.text!+"8"
       
    }
    
    
    @IBAction func NO9(_ sender: Any)
    {
        board.text = board.text!+"9"
        
    }
    
    
    @IBAction func NO0(_ sender: Any)
    {
        board.text = board.text!+"0"
       
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
            board.text = "\(sum)"
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
            division = temp / Double(board.text!)!
            board.text = "\(division)"
        }
       wd = Int(Double(board.text!)!)
    }
    
    @IBAction func reversion(_ sender: Any)
    {
        wd = Int(Double(board.text!)!)
       board.text = "\(wd * -1)"
    }
    
    
    @IBAction func sqrtt(_ sender: Any) {
        temp = Double(board.text!)!
        temp = sqrt(temp)
        board.text = "\(temp)"
    }
    
    @IBAction func add(_ sender: Any)
    {
        temp = Double(board.text!)!
        board.text = ""
        flag = 1
        
    }
    @IBAction func subtraction(_ sender: Any) {
        temp = Double(board.text!)!
        board.text = ""
        flag = 2
    }
    
    @IBAction func multiplication(_ sender: Any) {
        temp = Double(board.text!)!
        board.text = ""
        flag = 3
        
    }
    
   @IBAction func division(_ sender: Any) {
        temp = Double(board.text!)!
        board.text = ""
        flag = 4
    }
    @IBAction func clear(_ sender: Any) {
        board.text = ""
    }
    @IBAction func aclear(_ sender: Any) {
        board.text = "0"
        temp = Double(board.text!)!
        board.text = ""
    }
    
}


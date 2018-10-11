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
    var temp = 0
    var flag = 0

    @IBOutlet weak var board: UITextField!
    
    
    @IBAction func NO1(_ sender: Any) {
    board.text = board.text!+"1"
        
    }
    
    @IBAction func NO2(_ sender: Any) {
        board.text = board.text!+"2"
    }
    
    @IBAction func N03(_ sender: Any) {
        board.text = board.text!+"3"
    }
    
    
    @IBAction func NO4(_ sender: Any) {
        board.text = board.text!+"4"
    }
    
    @IBAction func NO5(_ sender: Any) {
        board.text = board.text!+"5"
    }
    
    @IBAction func NO6(_ sender: Any) {
        board.text = board.text!+"6"
    }
    
    
    @IBAction func NO7(_ sender: Any) {
        board.text = board.text!+"7"
    }
    
    
    @IBAction func NO8(_ sender: Any) {
        board.text = board.text!+"8"
    }
    
    
    @IBAction func NO9(_ sender: Any) {
        board.text = board.text!+"9"
    }
    
    
    @IBAction func NO0(_ sender: Any) {
        board.text = board.text!+"0"
    }
    
   
    @IBAction func point(_ sender: Any) {
         board.text = board.text!+"."
    }
    
    
    
    
    
    
    @IBAction func calculator(_ sender: Any)
    {
        if(flag==1)
        {
            var sum = 0
            sum = temp + Int(board.text!)!
            board.text = "\(sum)"
        }
        if(flag==2)
        {
            var subtraction = 0
            subtraction = temp - Int(board.text!)!
            board.text = "\(subtraction)"
        }
        if(flag==3)
        {
            var multiplication = 0
            multiplication = temp * Int(board.text!)!
            board.text = "\(multiplication)"
        }
        if(flag==4)
        {
            var division = 0
            division = temp / Int(board.text!)!
            board.text = "\(division)"
        }
        
    }
    
    @IBAction func add(_ sender: Any) {
        temp = Int(board.text!)!
        board.text = ""
        flag = 1
        
    }
    @IBAction func subtraction(_ sender: Any) {
        temp = Int(board.text!)!
        board.text = ""
        flag = 2
    }
    
    @IBAction func multiplication(_ sender: Any) {
        temp = Int(board.text!)!
        board.text = ""
        flag = 3
        
    }
    
   @IBAction func division(_ sender: Any) {
        temp = Int(board.text!)!
        board.text = ""
        flag = 4
    }
    @IBAction func clear(_ sender: Any) {
        board.text = ""
    }
    @IBAction func aclear(_ sender: Any) {
        board.text = "0"
        temp = Int(board.text!)!
        board.text = ""
    }
    
}


//
//  ViewController.swift
//  testSwift
//
//  Created by yukihiro moriyama on 2015/03/01.
//  Copyright (c) 2015年 YukihiroMoriyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    var number:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeColor(checkNum: Int) -> UIColor {
        var color:UIColor = UIColor.blackColor()
        
        if checkNum >= 10 {
            color = UIColor.redColor()
        } else if checkNum <= -10 {
            color = UIColor.blueColor()
        }
        
        return color
    }
    
    @IBAction func plus() {
        number += 1

        label.textColor = changeColor(number)
        label.text = "\(number)"
    }
    
    @IBAction func minus() {
        number -= 1
        
        label.textColor = changeColor(number)
        label.text = "\(number)"
    }
    
    @IBAction func multi() {
        number *= 2
        
        label.textColor = changeColor(number)
        label.text = "\(number)"
    }
    
    @IBAction func division() {
        number /= 2
        
        label.textColor = changeColor(number)
        label.text = "\(number)"
    }

    @IBAction func clear() {
        number = 0
        label.text = "\(number)"
    }
    
}


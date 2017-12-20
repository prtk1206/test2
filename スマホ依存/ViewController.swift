//
//  ViewController.swift
//  スマホ依存
//
//  Created by 菊池隆之 on 2017/12/18.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
   
    @IBOutlet weak var label: UILabel!

    var labelVCI = labelViewController()
    
    
    func random() -> String {
        let number1 = arc4random_uniform(10)
        let number2 = arc4random_uniform(10)
        let number3 = arc4random_uniform(10)
        let number4 = arc4random_uniform(10)
        let number5 = arc4random_uniform(10)
        let number6 = arc4random_uniform(10)
        return "\(number1)\(number2)\(number3)\(number4)\(number5)\(number6)"
        
    
    }
    func record(){
        labelVCI.math = self.label.text
    }
    
    //６桁の数字をlabelViewControllerに渡したい。
    var figures = random()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = random()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


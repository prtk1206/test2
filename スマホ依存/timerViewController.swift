//
//  timerViewController.swift
//  スマホ依存
//
//  Created by 菊池隆之 on 2017/12/18.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {

    @IBOutlet weak var countDownPicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func button(_ sender: UIButton) {
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "labelViewStoryBoard")
        present(nextView,animated: true, completion: nil)
       
    }
    
    //ボタンを押したときに画面が画面が遷移するようにしたい。
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



//
//  timerViewController.swift
//  スマホ依存2
//
//  Created by 菊池隆之 on 2017/12/21.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
    var timer:Timer?
    var timerInterval:TimeInterval = 0.0
    var countDownDate = Date(timeIntervalSinceReferenceDate:0.0)


    @IBOutlet weak var countDownPicker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: UIButton) {
        countDownPicker.alpha = 0
        label.alpha = 1
        timerInterval = countDownPicker.countDownDuration
        countDownDate = Date(timeIntervalSinceReferenceDate:
            timerInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation:"GMT")
        label.text = dateFormatter.string(from:countDownDate)
        
        Timer.scheduledTimer(timeInterval:1.0,target:self,selector:#selector(timerViewController.countDown(_:)),userInfo:nil,repeats:true)
    }
    override func viewDidLoad() {
        label.alpha = 0
        super.viewDidLoad()
     //スタートしたらピッカーを消して残り時間を表示したい。//

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func countDown(_ timer:Timer){
        countDownDate -= 1.0
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH時間mm分ss秒"
        dateFormatter.timeZone = TimeZone(abbreviation:"GMT")
        label.text = dateFormatter.string(from:countDownDate)
        
        if countDownDate.timeIntervalSinceReferenceDate <= 0.0 {
            timer.invalidate()
            performSegue(withIdentifier: "segueToLabel", sender: self)
            //遷移の段階で何らかの問題が起きている。
        }}
    
        
       
        
    
    }
    


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



//
//  timerViewController.swift
//  スマホ依存2
//
//  Created by 菊池隆之 on 2017/12/21.
//  Copyright © 2017年 菊池隆之. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    
    var timer:Timer?
    var timerInterval:TimeInterval = 0.0
    var countDownDate = Date(timeIntervalSinceReferenceDate:0.0)

    @IBOutlet weak var countDownPicker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.alpha = 0;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(_ sender: UIButton) {
        clear()
        countDownDate = Date(timeIntervalSinceReferenceDate:timerInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation:"GMT")
        label.text = dateFormatter.string(from:countDownDate)
        
        Timer.scheduledTimer(timeInterval:1.0,target:self,selector:#selector(timerViewController.countDown(_:)),userInfo:nil,repeats:true)
        timerInterval = countDownPicker.countDownDuration
       
        
    }
    func nextStoryBoard(){
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "labelViewStoryBoard")
        present(nextView,animated: true, completion: nil)
        
    }
    @objc func countDown(_ timer:Timer){
        countDownDate -= 1.0
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH時間mm分ss秒"
        dateFormatter.timeZone = TimeZone(abbreviation:"GMT")
        label.text = dateFormatter.string(from:countDownDate)
        
        if countDownDate.timeIntervalSinceReferenceDate <= 0.0 {
            timer.invalidate()
            nextStoryBoard()
        }}
    func clear(){
        label.alpha = 1;
        countDownPicker.alpha = 0;
    }
        
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



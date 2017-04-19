//
//  CountViewController.swift
//  BMSforCustomers
//
//  Created by อรรถพล วงษ์วิกิจการ on 4/19/2560 BE.
//  Copyright © 2560 อรรถพล วงษ์วิกิจการ. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {

    @IBOutlet weak var myCountLabel: UILabel!
    @IBOutlet weak var count2: UILabel!
    @IBOutlet weak var count3: UILabel!
    var timer = Timer()
    var count = 0
    var counts2 = 0
    var counts3 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        counts2 = 0
        counts3 = 0
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(CountViewController.update), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }
    func update() {
        count = count + 1
        if count == 60 {
            counts2 = counts2 + 1
            count = 0
        }
        if counts2 == 60 {
            counts3 = counts3 + 1
            counts2 = 0
        }
        myCountLabel.text = String(count)
        count2.text = String(counts2)
        count3.text = String(counts3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

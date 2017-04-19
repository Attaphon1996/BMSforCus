//
//  MapViewController.swift
//  BMSforCustomers
//
//  Created by อรรถพล วงษ์วิกิจการ on 4/19/2560 BE.
//  Copyright © 2560 อรรถพล วงษ์วิกิจการ. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var bt1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Check(_ sender: Any) {
        if a.text != "" {
            label1.isHidden = false
            label2.isHidden = false
            bt1.isHidden = false
        }
        else {
            label1.isHidden = true
            label2.isHidden = true
            bt1.isHidden = true
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

}

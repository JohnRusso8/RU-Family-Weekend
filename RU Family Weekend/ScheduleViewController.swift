//
//  ScheduleViewController.swift
//  RU Family Weekend
//
//  Created by John Russo on 4/29/21.
//

import UIKit

class ScheduleViewController: UIViewController {

   
    @IBOutlet var data: UILabel!
    
    var receivedData = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.text = receivedData

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

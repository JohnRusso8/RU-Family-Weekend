//
//  SundayViewController.swift
//  RU Family Weekend
//
//  Created by John Russo on 4/29/21.
//

import UIKit

class SundayViewController: UITableViewController {
    @IBOutlet var sun_eventTable: UITableView!
    
    let events_sun: [String] = ["A Service of Many Faiths", "Black Jack Walk", "Sweet and Savory Brunch at the Glassworks Eatery", "Hollybush Tour", "Family Show - Planetarium Show", "Stars of the Pharaohs - Planetarium Show"]
       
       let description_sun: [String] = ["Time: 9:00am - TBA" + "\n" + "\n" + "Location: Chamberlain Student Center Pit" + "\n" + "\n" + "Cost: Free" + "\n" + "\n" + "An all-faiths service where family members can explore and celebrate what they believe together as one community committed to supporting different faiths and religions.  ", "Time: 11:00am - TBA" + "\n" + "\n" + "Location: Student Recreation Center" + "\n" + "\n" + "Cost: Free" + "\n" + "\n" + "Enjoy a 1.2-mile walk around campus, collect tokens/giveaways at  stations along the way. Return to the Rec Center where you'll be dealt one blackjack hand for a chance to win raffles and prizes.  No start time - come anytime between 11:00am until 12:45pm", "Time: 11:00am - 2:00pm" + "\n" + "\n" + "Location: Holly Pointe Commons" + "\n" + "\n" + "Cost: $10 - Adults, $7 - Children under 12 (Rowan Students can use meal plans)" + "\n" + "\n" + "Kick off your Sunday in style by joining us for our classic brunch, featuring all your favorite breakfast items, Chef action stations and more.", "Time: 12:00pm - 2:00pm" + "\n" + "\n" + "Location: The Hollybush Mansion at Rowan University" + "\n" + "\n" + "Cost: Free" + "\n" + "\n" + "Join members of the Rowan History Department for an interactive tour of the Hollybush Mansion!  Hollybush has a long and varied history, first as the home of the prominent Whitney family of Glassboro in the mid-1800's, the site of a US and Russia Cold War Summit in 1967 and later as a part of Rowan University.", "Time: 2:00 - TBA" + "\n" + "\n" + "Location: Edelman Planetarium, Science Hall" + "\n" + "\n" + "Cost: $2 - Adults, Children and Senior Citizens (under 16 and over 60), and Rowan Students (with ID)" + "\n" + "\n" + "The Family Show series is reccomended for visitors with children 5-10 years old. The show runs about a half hour, does not include a live presentation and costs only $2 per person!" + "\n" + "\n" + "Show details and ticket purchases can be found at www.rowan.edu/planetarium", "Time: 3:00pm - TBA" + "\n" + "\n" + "Location: Edelman Planetarium, Science Hall" + "\n" + "\n" + "Cost: $5 - Adults, $3 - Children and Senior Citizens (Under 16 and over 60), $3 - Rowan Students (With ID)" + "\n" + "\n" + "Show details and ticket purchases can be found at www.rowan.edu/planetarium"]

    var event_description: String = ""
    
    var row: Int = 0
    
    
    // MARK: - Table view data source
     override func numberOfSections(in tableView: UITableView) -> Int {
     return 1
     }

     override func tableView(_ tableView: UITableView, numberOfRowsInSection
    section: Int) -> Int {
     return events_sun.count
     }

     override func tableView(_ tableView: UITableView, titleForHeaderInSection
    section: Int) -> String? {
     return "September 28th"
     }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
    IndexPath) -> UITableViewCell {
     let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")

     cell.textLabel?.text = events_sun[indexPath.row]

     return cell
    }
    
    // method to run when table view cell is tapped
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
    IndexPath) {

     row = indexPath.row
     // Segue to the second view controller
     self.performSegue(withIdentifier: "showDetail", sender: self)
     }
    
    // prepare Segue (define arguments to be passed to detail screen) and execute Segue
     override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {

     self.navigationItem.title = nil

     if segue.identifier == "showDetail"{
     // get a reference to the second view controller
        let secondViewController = segue.destination as! ScheduleViewController

     // set a variable in the second view controller with the data to pass
        secondViewController.receivedData = description_sun[row]

     }
     }
    override func viewDidLoad() {
     super.viewDidLoad()
     // Do any additional setup after loading the view, typically from a nib.
     }

     override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
     // Dispose of any resources that can be recreated.
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

//
//  FridayViewController.swift
//  RU Family Weekend
//
//  Created by John Russo on 4/29/21.
//

import UIKit

class FridayViewController: UITableViewController {

    @IBOutlet var fri_eventTable: UITableView!
    //Define arrays
      let events_fri: [String] = ["Registration and Welcome", "$5 Friday at the Glassworks Eatery", "How to Create a Killer LinkedIn Profile That Will Get You Noticed", "Heather Ujiie: Dystopian Garden Paradise", "Rowan Division III Ice Hockey vs. Rutgers Camden", "Laser Pink Floyd: Dark Side of the Moon - Planetarium Show", "Rowan Division II Ice Hockey vs. Virginia Tech", "Laser Pink Floyd: Dark Side of the Moon - Planetarium Show", "Drive-in Movie","Laser Pink Floyd: Dark Side of the Moon - Planetarium Show"]
      
      let description_fri: [String] = ["Time: 4:00pm - 7:00pm" + "\n" +  "\n" + "Location: Atrium, Savitz Hall 2nd Floor" + "\n" + "\n" + "Students or family members can pick up their reserved tickets or purchase tickets while supplies last. We encourage guests to bring non-perishable food and toiletries donations for The Shop at Rowan University (Students Helping Other Profs), serving Rowan University students faced with food insecurities.", "Time: 4:30pm - 7:30pm " + "\n" + "\n" + "Location: Holly Pointe Commons" + "\n" + "\n" + "Cost: $5 - Adults, Children, Senior Citizens(Rowan students can use meal plans/special-priced meal.)" + "\n" + "\n" + "Enjoy a wide variety of selections in our newest all you can eat dining facility including classic cuisine, pizza & pasta, soup & salad, traditional grill and more...", "Time: 4:00pm - 5:00pm " + "\n" + "\n" + "Location: Office of Career Advancement, Savitz Hall 2nd Floor" + "\n" + "\n" + "Cost: Free" + "\n" + "\n" + "Whether you are job or internship hunting, gathering leads, or networking in your career field, having a professional, eye-catching LinkedIn profile is an excellent idea to make sure that you can be found by the right people at the right time. Come learn how to complete your LinkedIn profile in a way that appeals to prospects that are quickly scanning to see if you have what they need.", "Time: 4:00pm - 7:00pm" + "\n" + "\n" + "Location: Rowan University Art Gallery, 301 West High Street, Glassboro NJ" + "\n" +  "\n" + "Cost: Free" + "\n" + "\n" + "Rowan University art Gallery will be producing and presenting an interdisciplinary program that turns a lens on how fashion and textile design is translated as a visual arts practice. This program comes at a time when the arts and design sectors are blending creative principles and crossing over into the multi-disciplinary practices. Fashion design has crossed over into a platform where explorations into gender and cultural identity can reach a broader audience outside the mainstream fashion and design sectors. Artist Heather Ujiie's work speaks directly to issues that are currently relevant in our society: transgender, sexuality, environmental issues, science and technology.", "Time: 5:30pm - TBA" + "\n" + "\n" + "Location: Hollydell Ice Arena, 600 Hollydell Drive, Sewell NJ" + "\n" + "\n" + "Cost: $5 - Adults, Free- Rowan Students(With ID) and children(Athletic passes included by the Athletic Department cannot be used for this event.)"  + "\n" + "\n" + "Join Rowan's hockey club for its opening night for the 2018/19 season!", "Time: 7:00pm - TBA" + "\n" + "\n" + "Location: Edelman Planetarium, Science Hall" + "\n" + "\n" + "Cost: $5 - Adults, $3 - Children and Senior Citizens (Under 16 and over 60), $3 - Rowan Students (With ID)" + "\n" + "\n" + "Show details and ticket purchases can be found at www.rowan.edu/planetarium", "Time: 8:15pm - TBA" + "\n" + "\n" + "Location: Hollydell Ice Arena, 600 Hollydell Drive, Sewell NJ" + "\n" + "\n" + "Cost: $5 - Adults, Free- Rowan Students(With ID) and children(Athletic passes included by the Athletic Department cannot be used for this event.)" + "\n" + "\n" + "Join Rowan's hockey club for its opening night for the 2018/19 season!", "Time: 8:30pm - TBA" + "\n" + "\n" + "Location: Edelman Planetarium, Science Hall" + "\n" + "\n" + "Cost: $5 - Adults, $3 - Children and Senior Citizens (Under 16 and over 60), $3 - Rowan Students (With ID)" + "\n" + "\n" + "Show details and ticket purchases can be found at www.rowan.edu/planetarium", "Time: 9:00pm - 1:00am" + "\n" + "\n" + "Location: South Jersey Technology Park" + "\n" + "\n" + "Cost: Free" + "\n" + "\n" + "Enjoy a family friendly classic under the stars and go back to the days of drive-in movies. No worries if you don't have a car, a free shuttle will be provided from the Student Center Half-Circle starting at 8:30pm. Enjoy free food and drinks while you watch.", "Time: 10:00pm - TBA" + "\n" + "\n" + "Location: Edelman Planetarium, Science Hall" + "\n" + "\n" + "Cost: $5 - Adults, $3 - Children and Senior Citizens (Under 16 and over 60), $3 - Rowan Students (With ID)" + "\n" + "\n" + "Show details and ticket purchases can be found at www.rowan.edu/planetarium"]
    
    //selected item
    var event_description: String = ""
    
    var row: Int = 0
    
    
    // MARK: - Table view data source
     override func numberOfSections(in tableView: UITableView) -> Int {
     return 1
     }

     override func tableView(_ tableView: UITableView, numberOfRowsInSection
    section: Int) -> Int {
     return events_fri.count
     }

     override func tableView(_ tableView: UITableView, titleForHeaderInSection
    section: Int) -> String? {
     return "September 28th"
     }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
    IndexPath) -> UITableViewCell {
     let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")

     cell.textLabel?.text = events_fri[indexPath.row]

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
        secondViewController.receivedData = description_fri[row]

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

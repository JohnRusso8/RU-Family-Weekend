//
//  SponsorsViewController.swift
//  RU Family Weekend
//
//  Created by User on 4/22/21.
//

import UIKit

class SponsorsViewController: UITableViewController {
    // Initializing array & populate array with sponsors
    var sponsors:[String] = ["Alumni Engagement", "Athletics", "Barnes & Noble", "Edelman Planetarium", "Gourmet Dining", "Harley E. Flack Student Mentoring Program", "History Department", "Office of Career Advancement", "Social Justice, Inclusion & Conflict Resolution", "Orientation & Student Leadership Programs", "Parent & Family Connections", "Rohrer College of Business", "Rowan University Art Gallery", "Rowan After Hours", "Chamberlain Student Center & Campus Activities", "Campus Recreation",
    "WGLS-FM Radio Station", "Museum of Anthropology at Rowan University", "Edelman Fossil Park", "College of Performing Arts", "Wellness Center", "Veterans Affairs", "Greek Life"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Get the height of the status bar
         let statusBarHeight = UIApplication.shared.statusBarFrame.height
         let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
         tableView.contentInset = insets
         tableView.scrollIndicatorInsets = insets

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sponsors.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sponsorsCell", for: indexPath)

        cell.textLabel?.text = sponsors[indexPath.item]

        return cell
    }
    override func tableView(_ tableView: UITableView,
    titleForHeaderInSection section: Int) -> String?
    {
        return "2018 Family Weekend Sponsors"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

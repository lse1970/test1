//
//  MyTableViewController.swift
//  test1
//
//  Created by D7702_09 on 2018. 6. 14..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
var name = ["동의과학대", "부산시민공원", "롯데호텔 부산본점"]
var address = ["부산광역시 부산진구 양지로 54", "부산광역시 부산진구 연지동 100-6", "부산광역시 부산진구 부전동 부전로 503-15"]
//    var BSS:[File1] = [
//    File1(name: "동의과학대", address: "부산광역시 부산진구 양지로 54"),
//    File1(name: "부산시민공원", address: "부산광역시 부산진구 연지동 100-6"),
//    File1(name: "롯데호텔 부산본점", address: "부산광역시 부산진구 부전동 부전로 503-15")
//    ]
    

    override func viewDidLoad() {//실행하자마자 나타나는거
        super.viewDidLoad()
        
        self.title="기말고사 코딩 시험"

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return BSS.count
        return name.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! MyTableViewCell
        
//        cell.title.text = BSS[indexPath.row].name
//        cell.sub.text = BSS[indexPath.row].address
        cell.title.text = name[indexPath.row]
        cell.sub.text = address[indexPath.row]
        
        

        

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

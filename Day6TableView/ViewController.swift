//
//  ViewController.swift
//  Day6TableView
//
//  Created by Felix-ITS016 on 19/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    var friendsArray = ["Pooja","Rekha","Hina","Anita","Anjali","Manali"]
    let relativearray = ["Neha","senha","Ashvini","Anjali","Urmila","Manisha"]
    let imageArray  = ["profile (1).png","profile (2).png","profile (3).png","profile (5).png","profile.png","image1.png"]
    let imageArray1 = ["hardik.jpeg","ms.jpeg","rohit.jpeg","shikhar.jpeg","wallpaper.jpeg","profile.png"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
        return friendsArray.count
        }
        else
        {
            return relativearray.count
            
        }
    }
    
    
    @IBOutlet weak var tableview1: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")/*(.default,.subtitle,.value1,.value2)*/
        if indexPath.section == 0
        {
            cell.textLabel?.text = friendsArray[indexPath.row]
            cell.imageView?.image = UIImage(named: imageArray[indexPath.row])

            //cell.detailTextLabel?.text = "Friend"
        }
        else
        {
            cell.textLabel?.text = relativearray[indexPath.row]
            cell.imageView?.image = UIImage(named: imageArray1[indexPath.row])
            //cell.detailTextLabel?.text = "Relative"
        }
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview1.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}


//
//  ViewController.swift
//  tableViewImageLable
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var imageArray = ["amra","ata","dalim","dragon","dumur","jam","jambura","kathal","kul","lichu","mlokkhi","peyara","tal"]
    var NameArray = ["amra","ata","dalim","dragon","dumur","jam","jambura","kathal","kul","lichu","mlokkhi","payara","tal"]
    var PriceArray = ["$5","$6","$3","$7","$4","$5","$10","$6","$3","$7","$4","$5","$12"]
    var descriptionArray = ["amra tok","ata khete vari moja","dalim fol lal hoy","dragon fol ami khai na","dumur khawa sunnat","jam vorta khete vari moja","jambura sokale khawa thik na","kathal amader jatio fol","kul khele thanda lage","lichu khub mojadar fol","mlokkhi oushadhi fol","payara sobsomoy pawa jai","tal pitha khete onk moja"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }


}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return imageArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
    
    
            cell.cellImageView.image = UIImage(named: imageArray[indexPath.row])
            cell.lableName.text = NameArray[indexPath.row]
            cell.lablePrice.text = PriceArray[indexPath.row]
    cell.lableDescription.text = descriptionArray[indexPath.row]
            return cell
            
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 350
        }
        
    }


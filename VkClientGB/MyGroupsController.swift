//
//  MyGroupsController.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 07.07.2021.
//

import UIKit

class MyGroupsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension MyGroupsController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 1;
        case 1:
            return 2;
        default:
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        cell.textLabel?.text = "Тема №\(indexPath.section)"
        cell.detailTextLabel?.text = "Группа № \(indexPath.row)"
        
        return cell
    }
    
}

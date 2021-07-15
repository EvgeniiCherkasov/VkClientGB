//
//  MyGroupsController.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 07.07.2021.
//

import UIKit

class MyGroupsController: UIViewController {
    
    var groups: [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let storage = GroupStorage()
        groups = storage.listOfGroups
        
    }
    
    
}

extension MyGroupsController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
       1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
         let cell = tableView.dequeueReusableCell(withIdentifier: GroupTableViewCell.reusedIdentifier, for: indexPath) as? GroupTableViewCell
        else {
             return UITableViewCell()
        }
         let group = groups[indexPath.row]
         cell.configure(group: group)
         return cell
    }
    
}

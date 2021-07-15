//
//  ListOfFriendsViewController.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 07.07.2021.
//

import UIKit

class ListOfFriendsController: UIViewController{
    
    var friends: [FriendModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storage = FriendStorage()
        friends = storage.listOfFriends
    }
    
}

extension ListOfFriendsController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendTableViewCell.reusedIdentifier, for: indexPath) as? FriendTableViewCell
       else {
            return UITableViewCell()
       }
        let friend = friends[indexPath.row]
        cell.configure(friend: friend)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "moveToFriendPhoto", sender: nil)
//    }
}

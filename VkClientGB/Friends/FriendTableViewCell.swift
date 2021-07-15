//
//  FriendTableViewCell.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 15.07.2021.
//

import UIKit

final class FriendTableViewCell: UITableViewCell {
    
    static let reusedIdentifier = "FriendTableViewCell"
    
    @IBOutlet private var nameLable: UILabel!
    @IBOutlet private var avatarImageview: UIImageView!
    
    func configure(friend: FriendModel) {
        avatarImageview.image = UIImage(named: friend.avatarName)
        nameLable.text = friend.name
    }
}

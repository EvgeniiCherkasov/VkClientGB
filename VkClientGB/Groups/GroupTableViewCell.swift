//
//  GroupTableViewCell.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 15.07.2021.
//


import UIKit

final class GroupTableViewCell: UITableViewCell {
    
    static let reusedIdentifier = "GoupTableViewCell"
    
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLable: UILabel!
    
    func configure(group: GroupModel) {
        avatarImageView.image = UIImage(named: group.avatarName)
        nameLable.text = group.name
    }
}

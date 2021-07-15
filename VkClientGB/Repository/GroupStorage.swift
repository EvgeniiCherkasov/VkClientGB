//
//  GroupStorage.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 15.07.2021.
//

import Foundation

class GroupStorage {
    
    let listOfGroups: [GroupModel]
    
    init() {
        listOfGroups = [
            GroupModel(name: "Avangers", avatarName: "Avangers"
            ),
            GroupModel(name: "Thor", avatarName: "Thor"
            ),
            GroupModel(name: "Wand", avatarName: "Wanda"
            ),
            GroupModel(name: "Hulk", avatarName: "Hulk"
            ),
            GroupModel(name: "Ant Man", avatarName: "Ant Man"
            ),
            GroupModel(name: "Spider Man", avatarName: "Spider Man"
            ),
        ]
    }
}

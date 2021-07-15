//
//  FriendStorage.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 15.07.2021.
//

import Foundation

class FriendStorage {
    
    let listOfFriends: [FriendModel]
    
    init() {
        listOfFriends = [
            FriendModel(name: "Iron Man", avatarName: "Iron Man", photos: [
                PhotoModel(name: "Iron Man 1", photoName: "Iron Man 1"),
                PhotoModel(name: "Iron Man 2", photoName: "Iron Man 2"),
                PhotoModel(name: "Iron Man 3", photoName: "Iron Man 3"),
            ]
            ),
            FriendModel(name: "Thor", avatarName: "Thor", photos: [
                PhotoModel(name: "Thor 1", photoName: "Thor 1"),
                PhotoModel(name: "Thor 2", photoName: "Thor 2")
            ]
            ),
            FriendModel(name: "Wand", avatarName: "Wanda", photos: [
                PhotoModel(name: "Wanda", photoName: "Wanda")
            ]
            ),
            FriendModel(name: "Hulk", avatarName: "Hulk", photos: [
                PhotoModel(name: "Hulk", photoName: "Hulk")
            ]
            ),
            FriendModel(name: "Ant Man", avatarName: "Ant Man", photos: [
                PhotoModel(name: "Ant Man", photoName: "Ant Man")
            ]
            ),
            FriendModel(name: "Spider Man", avatarName: "Spider Man", photos: [
                PhotoModel(name: "Thor 1", photoName: "Spider Man 1"),
                PhotoModel(name: "Spider Man 2", photoName: "Spider Man 2")
            ]
            ),
        ]
    }
}

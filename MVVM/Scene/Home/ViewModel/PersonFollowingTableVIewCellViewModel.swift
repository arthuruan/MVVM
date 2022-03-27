//
//  PersonFollowingViewModel.swift
//  MVVM
//
//  Created by Arthur Ruan on 27/03/22.
//

import UIKit

struct PersonFollowingTableVIewCellViewModel {
    let name: String
    let username: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        username = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
    }
}

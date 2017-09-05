//
//  FoodsController.swift
//  Foodies
//
//  Created by Chan Jing Hong on 01/09/2017.
//  Copyright © 2017 Cocoacode. All rights reserved.
//

import Foundation

// This is our controller. Think of the controller as a manager
// that manages all the different kinds of food you have.
// Any manipulation of foods will have to be done through this controller
class FoodsController {

    // FoodsController is a Singleton
    public static let sharedInstance = FoodsController()

    private(set) var foods: [Food] = []

    // Empty private init
    private init() {
        foods = retrieveFoods()
    }

    // MARK: - Adding and deleting foods
    /// File directory to save our foods
    private func foodFileUrl() -> URL {
        /*
         For more info on the iOS file system:
         https://developer.apple.com/library/content/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html
         */
        let documentsDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let foodUrl = documentsDir?.appendingPathComponent("foods")
        return foodUrl!
    }

    func add(_ food: Food) {
        foods.append(food)
        save()
    }

    func delete(_ food: Food) {
        // Find the index of that food, and then delete it:

    }

    // MARK: - Saving and retrieving food

    private func retrieveFoods() -> [Food] {
        // Unarchive foods from file, and if it doesnt exist, returns an empty array:
        return []
    }

    func save() {
        // Archive foods array and save to file:

    }

}







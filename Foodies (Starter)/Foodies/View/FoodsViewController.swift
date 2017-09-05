//
//  FoodsViewController.swift
//  Foodies
//
//  Created by Chan Jing Hong on 30/08/2017.
//  Copyright © 2017 Cocoacode. All rights reserved.
//

import UIKit

class FoodsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var foodsTableView: UITableView!

    let foodsController = FoodsController.sharedInstance

    // When the view has finished loading.
    // Do all your setup here
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set tableview datasource and delegate:
        foodsTableView.dataSource = self
        foodsTableView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        foodsTableView.reloadData()
    }

    @IBAction func addButtonTapped(_ sender: Any) {
        // Present AddFoodViewController here:
    }

    // MARK: - Tableview delegate and datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Should return the number of foods
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        // Set cell's title to foods[indexPath.row].name:

        // Set detail text label (Subtitle):

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
            // Remove food, reload tableview data:
        }
    }

}

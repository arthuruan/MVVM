//
//  ViewController.swift
//  MVVM
//
//  Created by Arthur Ruan on 25/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var data = [
        Person(firstName: "Arthur", lastName: "Ruan", gender: "male", age: 21, height: 1.81),
        Person(firstName: "Arthur", lastName: "Dionizio", gender: "male", age: 21, height: 1.75),
        Person(firstName: "Wagner", lastName: "Simoes", gender: "male", age: 22, height: 1.84),
        Person(firstName: "Gorgonho", lastName: "Victor", gender: "male", age: 22, height: 1.87),
        Person(firstName: "Ximas", lastName: "Lavezzo", gender: "male", age: 24, height: 1.89),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
        
        let model = data[indexPath.row]
        cell.configure(with: CellViewModel(firstName: model.firstName, lastName: model.lastName))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let height: Double
}

struct CellViewModel {
    let firstName: String
    let lastName: String
}

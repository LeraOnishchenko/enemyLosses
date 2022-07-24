//
//  TableViewController.swift
//  enemyLosses
//
//  Created by lera on 23.07.2022.
//

import UIKit
import Networking

class TableViewController: UIViewController, UITableViewDelegate{

    @IBOutlet private weak var tableView: UITableView!
    
    var Equipments: [Equipment] = []
    
    let networking = Networking()
    override func viewDidLoad() {
        super.viewDidLoad()
        Equipments = networking.gaveData()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController,
            let index = tableView.indexPathForSelectedRow?.row
        {
            destination.Equipment = Equipments[index]
        }
    }

}
extension TableViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.Equipments.count
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
        cell.config(from: Equipments[indexPath.row])
        return cell
}

    
//func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        }
}

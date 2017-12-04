//
//  TableViewController.swift
//  Container
//
//  Created by Leandro Jabur Monteiro on 01/01/17.
//  Copyright © 2017 Leandro Jabur Monteiro. All rights reserved.
//

import UIKit
import DataKit


class TableViewController: UITableViewController, UISearchBarDelegate {
    let maxSections = 1
    let maxRows = 10
    
    lazy var dataFighter = [Int: [Fighter]]()
    lazy var originalDataFighter = [Int: [Fighter]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataFighter = fillFighterDataSource(sections: maxSections, rows: maxRows)
        originalDataFighter = dataFighter
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail" {
            let cell = sender as! TableViewCell
            let viewControllerDescrition = segue.destination as! DescriptionViewController
            viewControllerDescrition.img = cell.leftImage.image
            viewControllerDescrition.descritpion = cell.textDescription
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "\(section)"
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var max = 0
        
        for (_ , list) in dataFighter {
            if list.count > max {
                max = list.count
            }
        }
        return max
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellAux = tableView.cellForRow(at: indexPath)
        self.performSegue(withIdentifier: "segueDetail", sender: cellAux)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell", for: indexPath) as! TableViewCell

        if indexPath.row >= (dataFighter[indexPath.section]?.count)! {
            return tableView.dequeueReusableCell(
                withIdentifier: "placeHolder", for: indexPath)
        }
        
        let content = dataFighter[indexPath.section]![indexPath.row]
        
        cell.titleLabel.text = content.name
        cell.subTitleLabel.text = content.combo
        //cell.contentTextLabel.text = content.description
        cell.textDescription = content.description
        
        cell.delegateViewController = self
        
        let img = UIImage(named: content.imageIco)
        cell.leftImage.image = img
        
        return cell
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            dataFighter = originalDataFighter
            self.tableView.reloadData()
            return
        }
        
        for (section, list) in originalDataFighter {
            let filtered = list.filter{
                let textToSearch = "\($0.name.uppercased())"
                return textToSearch.range(of: searchText.uppercased()) != nil
            }
            dataFighter[section] = filtered
        }
        self.tableView.reloadData()
    }
    
    
}

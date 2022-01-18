//
//  ViewController.swift
//  ItemsList
//
//  Created by Raghav Saboo on 18/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ItemTableView: UITableView!
    
    var items=["toothbrush","shoe","socks","shirt","pant","glasses","watche","perfume","mobile","Laptop","purse","Tshirt","earphones","Bike"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ItemTableView.delegate = self
        ItemTableView.dataSource = self
    }

}


extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You Selected \(items[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=ItemTableView.dequeueReusableCell(withIdentifier: "ItemCell",for:indexPath)
        
        cell.textLabel?.text=items[indexPath.row]
        
        return cell
    }
}

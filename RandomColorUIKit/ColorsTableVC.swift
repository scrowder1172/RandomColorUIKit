//
//  ColorsTableVC.swift
//  RandomColorUIKit
//
//  Created by SCOTT CROWDER on 5/15/24.
//

import UIKit

class ColorsTableVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50  // how many rows will be in the tableView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this function runs whenever a new cell appears on the screen
        
        return UITableViewCell()  // return blank table view cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)  // navigate to color screen when cell is tapped
    }
    
}

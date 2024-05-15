//
//  ColorsTableVC.swift
//  RandomColorUIKit
//
//  Created by SCOTT CROWDER on 5/15/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC  // create a destination of type ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 50  // how many rows will be in the tableView
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this function runs whenever a new cell appears on the screen
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else { return UITableViewCell() }
        let selectedColor = colors[indexPath.row]
        cell.backgroundColor = selectedColor
        
//        return UITableViewCell()  // return blank table view cell
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]  // get color for row tapped
        performSegue(withIdentifier: Segues.toDetail, sender: color)  // navigate to color screen when cell is tapped
    }
    
}


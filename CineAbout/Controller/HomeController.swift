//
//  ViewController.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 18/07/22.
//

import UIKit

class HomeController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var table: UITableView!
    
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "Roboto-Regular", size: 40)!
    ]
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Header()
        
        table.delegate = self
        table.dataSource = self
    }
    
    func Header() {
        //setting attributes to large title
        self.title = "Início"
        self.navigationController!.navigationBar.largeTitleTextAttributes = attrs
        
        //creating search button
        let rightSearchButton = UIBarButtonItem(
            barButtonSystemItem: .search,
            target: self,
            action: nil
        )
        
        rightSearchButton.tintColor = UIColor.white
        
        self.navigationItem.rightBarButtonItem = rightSearchButton
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

struct Movie {
    
}

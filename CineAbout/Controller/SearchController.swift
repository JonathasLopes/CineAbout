//
//  SearchController.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 21/07/22.
//

import UIKit

class SearchController: UIViewController {
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "Roboto-Regular", size: 40)!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Footer()
    }
    
    func Footer() {
        //setting title to navbar
        self.tabBarItem.title = "Pesquisar"
    }
}

//
//  ViewController.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 18/07/22.
//

import UIKit

class HomeController: UIViewController {
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "Roboto-Regular", size: 40)!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Header()
    }
    
    func Header() {
        //setting attributes to large title
        self.title = "Início"
        self.navigationController!.navigationBar.largeTitleTextAttributes = attrs
    }
}

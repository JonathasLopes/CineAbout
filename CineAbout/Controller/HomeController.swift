//
//  ViewController.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 18/07/22.
//

import UIKit

class HomeController: UIViewController {
    var movies: [Movie] = []
    let background: UIColor = UIColor(red: 0.11, green: 0.10, blue: 0.10, alpha: 0.60)
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CustomCellView.self, forCellReuseIdentifier: CustomCellView.identifier)
        return tableView
    }()
    
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "Roboto-Regular", size: 40)!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MovieStore.share.fetchMovies(from: .popular, completion: { result in
            do {
                self.movies = try result.get().results
                self.tableView.reloadData()
            } catch {
                return
            }
        })
        headerAndFooter()
        tableView.backgroundColor = UIColor.clear
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    func headerAndFooter() {
        //setting attributes to large title
        let appearanceNav = UINavigationBarAppearance()
        appearanceNav.configureWithOpaqueBackground()
        appearanceNav.backgroundColor = background
        appearanceNav.largeTitleTextAttributes = attrs
        appearanceNav.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.standardAppearance = appearanceNav
        self.navigationItem.title = "Início"
        
        //setting title to navbar
        self.title = "Início"
        let appearanceTab = UITabBarAppearance()
        appearanceTab.configureWithOpaqueBackground()
        appearanceTab.backgroundColor = background
        self.tabBarController?.tabBar.standardAppearance = appearanceTab
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension HomeController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(movies.count > 20) {
            return 20
        } else {
            return movies.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellView.identifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = self.movies[indexPath.row].title
        content.textProperties.color = .white
        content.secondaryText = self.movies[indexPath.row].releaseDate
        content.secondaryTextProperties.color = .white
        cell.backgroundColor = .clear
        
        cell.contentConfiguration = content
        return cell
    }
}

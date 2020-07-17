//
//  AllMoviesViewController.swift
//  Movie List
//
//  Created by FGT MAC on 7/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AllMoviesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}

//MARK: - UITableViewDataSource
extension AllMoviesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        return cell
    }
    
}

//MARK: - UITableViewDelegate
extension AllMoviesViewController: UITableViewDelegate{
    
    
}

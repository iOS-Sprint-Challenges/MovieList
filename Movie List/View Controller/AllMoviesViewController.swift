//
//  AllMoviesViewController.swift
//  Movie List
//
//  Created by FGT MAC on 7/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AllMoviesViewController: UIViewController {
    
    //MARK: - Properties
    private var movieList = [Movie]()
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        movieList.append(Movie(title: "Spyderman"))
    }
}

//MARK: - UITableViewDataSource
extension AllMoviesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }
        
        let data = movieList[indexPath.row]
        
        cell.titleLabel.text = data.title
        cell.seenButton.isSelected = data.seen
        cell.movieIndex = indexPath
        
        cell.delegate = self
        
        return cell
    }
    
}

//MARK: - UITableViewDelegate
extension AllMoviesViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    }
}

//MARK: -
extension AllMoviesViewController: MovieSeenStateDelegate{
    func seenStateChanged(index: IndexPath) {
        movieList[index.row].seen.toggle()
        tableView.reloadData()
    }
    
    
}

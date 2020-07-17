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
    private var filteredList = [Movie]()
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        movieList.append(Movie(title: "Spyderman"))
        
        loadMovies()
        searchBar.autocapitalizationType = .none
        
        tableView.rowHeight = 50.0
        
        let newMovieVC = tabBarController!.viewControllers?[1] as? AddMovieViewController
        newMovieVC?.delegate = self
    }
    
    //MARK: - Private methods
    
    private func loadMovies() {
        filteredList = movieList
        tableView.reloadData()
    }
    
    private func filterMovies() {
        
        if let inputValue = searchBar.text, !inputValue.isEmpty {
            //filter and reload table view
            filteredList = movieList.filter{$0.title.contains(inputValue)}
            tableView.reloadData()
        }else{
            //display entire array
            loadMovies()
        }
        
    }
}

//MARK: - UITableViewDataSource
extension AllMoviesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }
        
        let data = filteredList[indexPath.row]
        
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
        
        if editingStyle == .delete{
            self.movieList.remove(at: indexPath.row)
            loadMovies()
        }
    }
}

//MARK: - MovieSeenStateDelegate
extension AllMoviesViewController: MovieSeenStateDelegate{
    func seenStateChanged(index: IndexPath) {
        movieList[index.row].seen.toggle()
        loadMovies()
    }
}


//MARK: - NewMovieDelegate
extension AllMoviesViewController: NewMovieDelegate{
    func addNewMovie(movie: Movie) {
        movieList.append(movie)
        loadMovies()
    }
}


extension AllMoviesViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterMovies()
    }
}

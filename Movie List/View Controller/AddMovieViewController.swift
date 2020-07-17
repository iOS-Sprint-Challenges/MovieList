//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by FGT MAC on 7/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func addNewMovie(movie:Movie)
}

class AddMovieViewController: UIViewController {
    
    //MARK: - Properties
    var delegate: NewMovieDelegate?
    
    //MARK: - Outlets
    @IBOutlet weak var movieTitle: UITextField!
    
    //MARK: - Actions

    @IBAction func addMovieToArray(_ sender: UIButton) {
        if let newMovie = movieTitle.text, !newMovie.isEmpty{
            delegate?.addNewMovie(movie: Movie(title: newMovie))
            tabBarController?.selectedIndex = 0
            movieTitle.text = ""
        }
    }
    

}

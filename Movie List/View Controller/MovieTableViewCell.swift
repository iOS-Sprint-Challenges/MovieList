//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by FGT MAC on 7/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol MovieSeenStateDelegate {
    func seenStateChanged(index: IndexPath)
}

class MovieTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    var movieIndex: IndexPath!
    var delegate : MovieSeenStateDelegate?
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    //MARK: - Actions
    @IBAction func seenButtonPressed(_ sender: UIButton) {
        //Trigger a custom delegate to change the state
        delegate?.seenStateChanged(index: movieIndex)
    }
    

}

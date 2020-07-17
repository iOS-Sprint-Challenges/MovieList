//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by FGT MAC on 7/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - Actions
    @IBAction func seenButtonPressed(_ sender: UIButton) {
        //Trigger a custom delegate to change the state
    }
    

}

//
//  MovieTableViewCell.swift
//  MovieListSprint_iOS16
//
//  Created by Stephanie Ballard on 3/20/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var hasBeenSeenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func hasBeenSeenButtonTapped(_ sender: UIButton) {
        movie?.hasBeenSeen.toggle()
        updateViews()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func updateViews() {
        movieTitleLabel.text = movie?.name
        if movie?.hasBeenSeen == false {
            hasBeenSeenButton.setTitle("Not Seen", for: .normal)
        } else {
            hasBeenSeenButton.setTitle("Seen", for: .normal)
        }
    }
}

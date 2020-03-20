//
//  AddMovieViewController.swift
//  MovieListSprint_iOS16
//
//  Created by Stephanie Ballard on 3/20/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func newMovieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addNewMovieLabel: UILabel!
    @IBOutlet weak var enterMovieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
    }
    
}

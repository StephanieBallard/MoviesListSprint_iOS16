//
//  MovieListViewController.swift
//  MovieListSprint_iOS16
//
//  Created by Stephanie Ballard on 3/20/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovieSegue" {
            guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
            addMovieVC.delegate = self
    }
}
}

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell() }
        let movie = movies[indexPath.row]
        cell.movieTitleLabel.text = movie.name
        return cell
    }
}

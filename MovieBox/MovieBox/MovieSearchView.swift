//
//  MovieSearchView.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation
import Kingfisher
import MovieBoxAPI

final class MovieSearchView : UIView {
    
    var delegate : MovieSearchViewDelegate?
    
    private var movieList: [MoviePresentation] = []
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
    
}

extension MovieSearchView: MovieSearchViewProtocol {
    func updateMovieList(_ movieList: [MoviePresentation]) {
        self.movieList = movieList
        tableView.reloadData()
    }
    
    func setLoading(_ isLoading: Bool) {
        if isLoading {
            indicatorView.startAnimating()
        } else {
            indicatorView.stopAnimating()
        }
    }
    
}

extension MovieSearchView: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.count > 2 {
            delegate?.search(with: searchText)
        } else {
            updateMovieList([])
        }
    }
}

extension MovieSearchView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieSearchCell", for: indexPath) as! MovieSearchCell
        let movie = movieList[indexPath.row]
        cell.titleLabel.text = movie.title
        cell.yearLabel.text = movie.year
        cell.imageVW.kf.setImage(with: movie.image)
        
        return cell
    }

}

extension MovieSearchView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelect(at: indexPath.row)
    }
}

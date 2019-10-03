//
//  MovieSearchViewController.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieSearchViewController: UIViewController {
    
    @IBOutlet var movieSearchView: MovieSearchView! {
        didSet {
            movieSearchView.delegate = self
            title = "Movie Search"
        }
    }
    
    var service: MovieServiceProtocol!
    private var movieList: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getMovieList(searchText:String){
        movieSearchView.setLoading(true)
        service.fetchSearchMovies(params: ["s" : searchText,
                                           "type": "movie",
                                           "page": "1",
                                           "apiKey":"a57ad0ef"])
        { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let value):
                self.movieList = value.search
                let moviePresentations = value.search.map(MoviePresentation.init)
                self.movieSearchView.updateMovieList(moviePresentations)
                print(result)
            case .failure(let error):
                print(error)
            }
            self.movieSearchView.setLoading(false)
        }
    }

}

extension MovieSearchViewController: MovieSearchViewDelegate {
    func search(with name: String) {
        getMovieList(searchText: name)
    }
    
    func didSelect(at index: Int) {
        let movie = movieList[index]
        let movieDetailViewController = MovieDetailBuilder.make(with: movie)
        show(movieDetailViewController, sender: nil)
    }
    
    
}

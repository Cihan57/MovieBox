//
//  MovieDetailViewController.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import UIKit
import MovieBoxAPI

final class MovieDetailViewController: UIViewController {
    
    @IBOutlet var movieDetailView: MovieDetailView!
    
    var movie: Movie!
    
    var service: MovieServiceProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.fetchMovieDetail(params: ["i" : movie.imdbId,"apiKey":"a57ad0ef"]) { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let value):
                self.movieDetailView.updateMovieDetail(MovieDetailPresentation(movie: value))
                print(result)
            case .failure(let error):
                print(error)
            }
        }
    }
}

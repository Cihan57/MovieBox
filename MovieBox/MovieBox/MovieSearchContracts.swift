//
//  MovieSearchContracts.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import Foundation

protocol MovieSearchViewProtocol {
    var delegate: MovieSearchViewDelegate? { get set }
    func updateMovieList(_ movieList: [MoviePresentation])
    func setLoading(_ isLoading: Bool)
}

protocol MovieSearchViewDelegate {
    func didSelect(at index: Int)
    func search(with name:String)
}

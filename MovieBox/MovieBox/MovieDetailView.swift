//
//  MovieDetailView.swift
//  MovieBox
//
//  Created by Cihan Karabaş on 3.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import UIKit
import Kingfisher

final class MovieDetailView: UIView {
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
}

extension MovieDetailView: MovieDetailViewProtocol {
    func updateMovieDetail(_ movieDetail: MovieDetailPresentation) {
        print("update ui")
        titleLabel.text = movieDetail.title
        yearLabel.text = movieDetail.year
        posterImageView.kf.setImage(with: movieDetail.image)
    }
    
    
}

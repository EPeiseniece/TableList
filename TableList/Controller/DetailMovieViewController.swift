//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by elina.peiseniece on 13/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {

    
    @IBOutlet weak var moviePosterImage: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movie!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if movie != nil {
            moviePosterImage.image = UIImage(named: movie.poster)
            movieLabel.text = movie.movieName + " - " + movie.movieYear
            movieLabel.numberOfLines = 0
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

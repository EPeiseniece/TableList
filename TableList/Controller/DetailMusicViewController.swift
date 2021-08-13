//
//  DetailMusicViewController.swift
//  TableList
//
//  Created by elina.peiseniece on 13/08/2021.
//

import UIKit

class DetailMusicViewController: UIViewController {

    @IBOutlet weak var trackImage: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    
    var song:Song!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if song != nil {
            trackImage.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " - " + song.album
            trackNameLabel.numberOfLines = 0
            
        }

        // Do any additional setup after loading the view.
    }
    


}

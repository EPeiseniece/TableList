//
//  MovieTableViewController.swift
//  TableList
//
//  Created by elina.peiseniece on 13/08/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies = Movie.createMovie()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        let movie = movies[indexPath.row]
        
        
        
        cell.movieLabel.text = movie.movieName
        cell.yearLabel.text = movie.movieYear
        cell.movieImageView.image = UIImage(named: movie.poster)
        
        return cell
    }
   

    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentMovie = movies.remove(at: fromIndexPath.row)
        movies.insert(currentMovie, at: to.row)
    }
  
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.none
    }
 

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        if let indexPath = tableView.indexPathForSelectedRow{
            let detailVC = segue.destination as! DetailMovieViewController
            
            detailVC.movie = movies[indexPath.row]
            
        }
      
        
    
        // Pass the selected object to the new view controller.
    }
 

}

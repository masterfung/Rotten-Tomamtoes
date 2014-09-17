//
//  MovieViewTabController.swift
//  RottenTomatoes
//
//  Created by Tsung Hung on 9/14/14.
//  Copyright (c) 2014 Tsung Hung. All rights reserved.
//

import UIKit

class MovieViewDetailsController: UIViewController {

    var movie : NSDictionary = [:]
    
    @IBOutlet weak var movieDetailPoster: UIImageView!
    
    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var scoreRatingLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = movie["title"] as? String
        
        var title : String = movie["title"] as String
        var year : Int = movie["year"] as Int
        var ratings : NSDictionary = movie["ratings"] as NSDictionary
        var criticsScore : Int = ratings["critics_score"] as Int
        var audienceScore : Int = ratings["audience_score"] as Int
        var synopsis : String = movie["synopsis"] as String
        var rating : String = movie["mpaa_rating"] as String
        
        
        self.movieLabel.text = title
        self.ratingLabel.text = rating
        self.scoreRatingLabel.text = "Critics Score: \(String (criticsScore)) Audience Score: \(String (audienceScore))"
        self.summaryLabel.text = synopsis
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

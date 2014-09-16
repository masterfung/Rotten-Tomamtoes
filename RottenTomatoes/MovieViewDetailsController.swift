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
    
    
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = movie["title"] as? String
        
        var movieTitle: string = movie["title"] as String
        var movieYear: Int = movie["year"] as Int
        var movieRatings: NSDictionary = ratings["ratings"] as NSDictionary
        var movieCriticsScore: Int = ratings["critics_score"] as Int
        var movieAudienceScore: Int = ratings["audience_score"] as Int
        
        
        
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

//
//  DetailViewController.swift
//  flix
//
//  Created by Nicole Mitchell on 6/16/16.
//  Copyright © 2016 Nicole Mitchell. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var viewSpace: UIView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var innerScrollView: UIScrollView!
    
    var movie: NSDictionary!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.

        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: scrollView.frame.origin.y + viewSpace.frame.size.height)
        innerScrollView.contentSize = CGSize(width: innerScrollView.frame.size.width, height: view.frame.size.height)
        let title = movie["title"] as? String
        titleLabel.text = title
        
        print("scroll view: \(scrollView.frame.size)")
        print("view : \(view.frame.size)")
        print("viewSpace : \(viewSpace.frame.size)")
        
        let overview = movie["overview"] as? String
        overviewLabel.text = overview
        
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        if let posterPath = movie["poster_path"] as? String {
            let imageUrl = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWithURL(imageUrl!)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        print("prepare for segue called")
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

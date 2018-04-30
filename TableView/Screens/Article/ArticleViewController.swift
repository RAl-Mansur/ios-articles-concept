//
//  ArticleViewController.swift
//  TableView
//
//  Created by Ridwan Al-Mansur on 25/04/2018.
//  Copyright © 2018 Ridwan Al-Mansur. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var followBtn: UIButton!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var articleDate: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    var selectedArticle: ArticleModel?
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = false
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let article = selectedArticle {
            self.articleImage.image = article.articleImage
            self.authorName.text = article.author
            self.articleDate.text = article.articleDate
            self.profileImage.image = article.profileImage
        }
        
    }

    override func didReceiveMemoryWarning() {
        
    }

}

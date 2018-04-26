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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.prefersLargeTitles = false
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

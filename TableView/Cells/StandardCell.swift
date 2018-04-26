//
//  StandardCell.swift
//  TableView
//
//  Created by Ridwan Al-Mansur on 24/04/2018.
//  Copyright © 2018 Ridwan Al-Mansur. All rights reserved.
//

import UIKit

class StandardCell: UITableViewCell {

    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleName: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var articleDate: UILabel!
    @IBOutlet weak var cellBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellBackground.layer.cornerRadius = 5.0
        articleImage.layer.cornerRadius = 3.0
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
 
    func initCell(articleImage: UIImage, articleName: String, subtitle: String, profileImage: UIImage, authorName: String, articleDate: String) {
        self.articleImage.image = articleImage
        self.articleName.text = articleName
        self.subtitle.text = subtitle
        self.profileImage.image = profileImage
        self.authorName.text = authorName
        self.articleDate.text = articleDate
    }
    
}

//
//  MainTableViewController.swift
//  TableView
//
//  Created by Ridwan Al-Mansur on 24/04/2018.
//  Copyright © 2018 Ridwan Al-Mansur. All rights reserved.
//

import UIKit

class HomePageTableViewController: UITableViewController {

    let articles: [ArticleModel] = Data().articles
    private var selectedArticle: ArticleModel?
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Articles"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "FeaturedCell", bundle: nil), forCellReuseIdentifier: "cell1")
        tableView.register(UINib(nibName: "StandardCell", bundle: nil), forCellReuseIdentifier: "cell2")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toArticlePage" {
            let destinationVC  = segue.destination as! ArticleViewController
            destinationVC.selectedArticle = selectedArticle
        }
    }


}

// MARK: Table view methods
extension HomePageTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = articles[indexPath.row]
        
        if indexPath.row == 0 {
            let featuredCell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! FeaturedCell
            featuredCell.initCell(articleImage: article.articleImage, articleName: article.articleName, subtitle: article.articleSubtitle, profileImage: article.profileImage, authorName: article.author, articleDate: article.articleDate)
            return featuredCell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! StandardCell
            cell.initCell(articleImage: article.articleImage, articleName: article.articleName, subtitle: article.articleSubtitle, profileImage: article.profileImage, authorName: article.author, articleDate: article.articleDate)
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedArticle = articles[indexPath.row]
        performSegue(withIdentifier: "toArticlePage", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 317 : 195
    }
    
}

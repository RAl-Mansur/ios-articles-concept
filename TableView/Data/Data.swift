//
//  Data.swift
//  TableView
//
//  Created by Ridwan Al-Mansur on 24/04/2018.
//  Copyright © 2018 Ridwan Al-Mansur. All rights reserved.
//

import Foundation
import UIKit

struct ArticleModel {
    let articleName: String
    let articleSubtitle: String
    let articleImage: UIImage
    let profileImage: UIImage
    let author: String
    let articleDate: String
    
}


class Data {
    
    let articles: [ArticleModel]
    
    init() {
        articles = [
            ArticleModel(articleName: "Build a Foursquare clone iOS app - Part 1: Introduction and setup", articleSubtitle: "In this article I want to show how to build a scalable iOS application by using concepts like continuous integration and state management.", articleImage: #imageLiteral(resourceName: "article2"), profileImage: #imageLiteral(resourceName: "profile2"), author: "Fibo Hiroki", articleDate: "16th April 2018"),
            ArticleModel(articleName: "Parallel programming with Swift: Promises", articleSubtitle: "Concurrency is getting more and more relevant in our daily work.", articleImage: #imageLiteral(resourceName: "article1"), profileImage: #imageLiteral(resourceName: "profile1"), author: "Zat Rana", articleDate: "12th September 2017"),
            ArticleModel(articleName: "Intro to iOS threading.", articleSubtitle: "Threading is an important concept in iOS. The concept is pretty simple. This is what happens inside the processor.", articleImage: #imageLiteral(resourceName: "article3"), profileImage: #imageLiteral(resourceName: "profile3"), author: "Abhimuralidharan", articleDate: "17th November 2017"),
            ArticleModel(articleName: "Instant Feedback in iOS Engineering Workflows", articleSubtitle: "At Instagram and Facebook, we’ve seen how adopting React Native in product development has allowed our engineers to move and iterate faster on products.", articleImage: #imageLiteral(resourceName: "article4"), profileImage: #imageLiteral(resourceName: "profile4"), author: "Instagram Engineer", articleDate: "23rd April 2018"),
            ArticleModel(articleName: "Blurring the Lines Between MVVM and VIPER", articleSubtitle: "If you have been developing mobile apps for a while, you’ve probably heard of MVVM and VIPER.", articleImage: #imageLiteral(resourceName: "article5"), profileImage: #imageLiteral(resourceName: "profile5"), author: "Göksel Köksal", articleDate: "20th April 2017"),
            ArticleModel(articleName: "Say Hello to 1Blocker X", articleSubtitle: "We are proud to finally present you the new version of our app, which took us over six months to make. ", articleImage: #imageLiteral(resourceName: "article6"), profileImage: #imageLiteral(resourceName: "profile6"), author: "Salavat Khanov", articleDate: "23rd April 2018"),
            ArticleModel(articleName: "Exploring Apps Without Jailbreaking", articleSubtitle: "Five simple techniques to learn how other apps are built", articleImage: #imageLiteral(resourceName: "article7"), profileImage: #imageLiteral(resourceName: "profile7"), author: "Nathan Gitter", articleDate: "14th April 2018"),
            ArticleModel(articleName: "The iPhone is Dead", articleSubtitle: "I’ve switched back-and-forth between iPhone and Android in the past and I’ve always felt the iPhone edged out any Android phone, but not anymore.", articleImage: #imageLiteral(resourceName: "article8"), profileImage: #imageLiteral(resourceName: "profile8"), author: "Musings Rand", articleDate: "21st January 2018"),
            ArticleModel(articleName: "A Phone Setup That Will Make You More Mindful", articleSubtitle: "If your phone was more like your toothbrush, your life would be a lot better.", articleImage: #imageLiteral(resourceName: "article9"), profileImage: #imageLiteral(resourceName: "profile9"), author: "Niklas Göke", articleDate: "16th November 2017"),
            ArticleModel(articleName: "Implementing background upload queue with Swift", articleSubtitle: "I’m working on an app that lets users select a bunch of photos, upload and share them with other users. ", articleImage: #imageLiteral(resourceName: "article10"), profileImage: #imageLiteral(resourceName: "profile10"), author: "Nemanja Kovacevic", articleDate: "14th June 2017")
        ]
    }
    
}



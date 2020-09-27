//
//  MoreMoviesVC.swift
//  MoviesTask
//
//  Created by Eissa on 9/24/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

protocol MoreMoviesProtocol: class {
    func getMoreMovies(moreMoviesArray: [Result]?)
}

class MoreMoviesVC: UIViewController {

    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var search: UIButton!
    @IBOutlet weak var moreMoviesCollection: UICollectionView!
    
    var moreMoviesArr = [Result]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
    
    @IBAction func backBtn(_ sender: Any) {
        moreMoviesArr.removeAll()
        self.goback()
    }
    @IBAction func searchBtn(_ sender: Any) {
    }
}

extension MoreMoviesVC: MoreMoviesProtocol {
    func getMoreMovies(moreMoviesArray: [Result]?) {
        self.moreMoviesArr = moreMoviesArray ?? []
        self.moreMoviesCollection.reloadData()
    }
}

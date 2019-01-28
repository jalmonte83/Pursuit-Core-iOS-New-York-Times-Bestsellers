//
//  FavoritesViewController.swift
//  NYTBestsellers
//
//  Created by Jeffrey Almonte on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    let favoritesView = FavoritesView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.view.backgroundColor = .blue

self.view.addSubview(favoritesView)
        favoritesView.favoritesCollectionView.dataSource = self
        favoritesView.favoritesCollectionView.delegate = self
        
    }
    

    

}

extension FavoritesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = favoritesView.favoritesCollectionView.dequeueReusableCell(withReuseIdentifier: "FavoritesCell", for: indexPath) as? FavoritesCollectionCell else {return UICollectionViewCell()}
        return cell
    }
    
    
}
extension FavoritesViewController: UICollectionViewDelegate {
    
}

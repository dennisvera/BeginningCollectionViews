//
//  MasterViewController.swift
//  ParksPicker
//
//  Created by Dennis Vera on 9/11/17.
//  Copyright © 2017 Razeware, LLC. All rights reserved.
//

import UIKit


class MasterViewController: UICollectionViewController {
    
    fileprivate var parksDataSource = ParksDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = collectionView!.frame.width / 3
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MasterToDetail" {
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.park = sender as? Park
        }
    }
}


// Mark: UICollectionViewDataSource
extension MasterViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return parksDataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.textLabel.text = "\((indexPath as NSIndexPath).row)"
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let nationalPark =
            parksDataSource.parkForItemAtIndexPath(indexPath) {
            performSegue(withIdentifier: "MasterToDetail", sender:
                nationalPark)
        }
    }
}






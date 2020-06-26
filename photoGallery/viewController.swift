//
//  ViewController.swift
//  photoGallery
//
//  Created by ahmed kamel on 11/3/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionView: UICollectionView!
   
    var images: [UIImage] = [
        #imageLiteral(resourceName: "image5") , #imageLiteral(resourceName: "image3") , #imageLiteral(resourceName: "image4") , #imageLiteral(resourceName: "image1") , #imageLiteral(resourceName: "image2") , #imageLiteral(resourceName: "image5") , #imageLiteral(resourceName: "image3") , #imageLiteral(resourceName: "image4") , #imageLiteral(resourceName: "image1") , #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image5") , #imageLiteral(resourceName: "image3") , #imageLiteral(resourceName: "image4") , #imageLiteral(resourceName: "image1") , #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image5") , #imageLiteral(resourceName: "image3") , #imageLiteral(resourceName: "image4") , #imageLiteral(resourceName: "image1") , #imageLiteral(resourceName: "image2")
     ]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "galleryCollectionViewCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
       }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.image = images[indexPath.row]
        return cell
       }
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
     {
        let widthView = (collectionView.frame.size.width - 10 ) / 2
        return CGSize(width: widthView, height: 200.0)
     }
}


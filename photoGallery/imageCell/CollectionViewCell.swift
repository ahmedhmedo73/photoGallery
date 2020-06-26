//
//  CollectionViewCell.swift
//  photoGallery
//
//  Created by ahmed kamel on 11/4/1441 AH.
//  Copyright © 1441 AH ahmed kamel. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage = UIImage(){
        didSet{
            imageView.image = image
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 20	
    }
}

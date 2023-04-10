//
//  CustomCollectionViewFlowLayout.swift
//  InfiniteScrolling
//
//  Created by Chupahin Arcady on 10.04.2023.
//

import UIKit

class CustomCollectionViewFlowLayout: UICollectionViewFlowLayout {
    @IBInspectable var numberOfItemsPerRow: Int = 0 {
        didSet {
            invalidateLayout()
        }
    }
    
    override func prepare() {
        super.prepare()
        
        if let collectionView = self.collectionView {
            var newItemSize = itemSize
            
            
            let itemsPerRow = CGFloat(max(numberOfItemsPerRow, 1))
            
            
            let totalSpacing = minimumInteritemSpacing * (itemsPerRow - 1.0)
            
           
            newItemSize.width = (collectionView.bounds.size.width - sectionInset.left - sectionInset.right - totalSpacing) / itemsPerRow
            
            
            if itemSize.height > 0 {
                newItemSize.height = newItemSize.width * 1.5
            }
            
            
            itemSize = newItemSize
        }
    }
}

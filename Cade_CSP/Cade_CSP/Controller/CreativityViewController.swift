//
//  CreativityController.swift
//  Cade_CSP
//
//  Created by Barnes, Cade on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class CreativityViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "cute"),
            UIImage(named: "squishBall"),
            UIImage(named: "tree"),
            UIImage(named: "squishBall"),
            UIImage(named: "squishBall"),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
            UIImage(named: ""),
        ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
                })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        
            
        }
    }
    
}

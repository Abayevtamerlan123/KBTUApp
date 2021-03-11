//
//  GalleryViewController.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class GalleryViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
   
    @IBOutlet weak var cview:
        UICollectionView!
    let photos = ["kbtu1", "kbtu2", "kbtu3", "kbtu4", "kbtu5", "kbtu6", "kbtu7", "kbtu8", "kbtu9", "kbtu10", "kbtu11", "kbtu12", "kbtu13", "kbtu14", "kbtu15","kbtu16","kbtu17","kbtu18","kbtu19","kbtu20"]
    
    let itemsPerRow: CGFloat = 3
    let sectionInserts = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! GalleryCollectionViewCell
        let imageName = photos[indexPath.item]
        let image = UIImage(named: imageName)
        cell.mainImage.image = image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "photoSegue" {
            let photoMain = segue.destination as! PhotoVC
            let cell = sender as! GalleryCollectionViewCell
            photoMain.photo = cell.mainImage.image
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
}


//
//  NewsVC.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class NewsVC: UIViewController {

    var Heading: String?
    var Description: String?
    var Date: String?
    var ImageofNews: UIImage?
        
    @IBOutlet weak var imageVC: UIImageView!
    @IBOutlet weak var nameVC: UILabel!
    @IBOutlet weak var dataVC: UILabel!
    @IBOutlet weak var descriptionVC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageVC.image = ImageofNews
        nameVC.text = Heading
        dataVC.text = Date
        descriptionVC.text = Description
        
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

//
//  PhotoVC.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 12.03.2021.
//

import UIKit

class PhotoVC: UIViewController {

    var photo:UIImage?
    
    @IBOutlet weak var photoFull: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoFull.image = photo
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapToShare(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [photo!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            
//            if bool {
//                print("Успешно")
//            }
            
    
        }
        
        present(shareController, animated: true, completion: nil)
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

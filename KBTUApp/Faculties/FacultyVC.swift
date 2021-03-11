//
//  FacultyVC.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class FacultyVC: UIViewController {

    var name:String?
    var imageF:UIImage?
    var words:String?
    
    @IBOutlet weak var facultyName: UILabel!
    @IBOutlet weak var facultyImage: UIImageView!
    @IBOutlet weak var facultyWords: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        facultyName.text = name
        facultyImage.image = imageF
        facultyWords.text = words
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

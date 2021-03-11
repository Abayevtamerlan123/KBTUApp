//
//  FacultyViewController.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class FacultyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var faculties = [
        Faculty.init(title: "Information Technologies", imageofFaculties: UIImage.init(named: "FIT")!, tagline: "Learn with the best in IT among us", facultiesPhoto: UIImage.init(named: "First")),
        Faculty.init(title: "Business School", imageofFaculties: UIImage.init(named: "BS"), tagline: "Invest in your future with us", facultiesPhoto: UIImage.init(named: "Second")),
        Faculty.init(title: "Kazakhstan Marritime", imageofFaculties: UIImage.init(named: "KMA"), tagline:"Work and travel with us", facultiesPhoto: UIImage.init(named: "Third")),
        Faculty.init(title: "Mathematic and Cybernetics", imageofFaculties: UIImage.init(named: "Math"), tagline: "Develop and solve complex problems with us", facultiesPhoto: UIImage.init(named:"Forth"))
    
    ]
    
    @IBOutlet weak var myTableView2: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return faculties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "facultiesCell") as?
        FacultyTableViewCell
        cell?.imageFaculty.image = faculties[indexPath.row].imageofFaculties
        cell?.nameFaculty.text = faculties[indexPath.row].title
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let index = (myTableView2.indexPathForSelectedRow?.row)!
        guard let destination = segue.destination as? FacultyVC else {return}
        destination.imageF = faculties[index].facultiesPhoto
        destination.name = faculties[index].title
        destination.words = faculties[index].tagline
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

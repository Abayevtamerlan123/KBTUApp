//
//  FacultiesViewController.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class FacultiesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource    {
    
    var faculties = [
        
        Faculties(title: "Engineering & Natural Sciences", imageoFacuilties: UIImage.init(named: "Engineers")!, tagLine: "Learn with the best in IT among us", facultiesPhoto: UIImage.init(named: "Math")!)
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "facultyCell") as? FacultiesTableViewCell
        cell?.imageofFaculty.image = faculties[indexPath.row].imageoFacuilties
        cell?.nameofFaculty.text = faculties[indexPath.row].title
        return cell!
    
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

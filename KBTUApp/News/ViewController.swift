//
//  ViewController.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 10.03.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var objects = [ News(image: UIImage.init(named: "1")!, heading: "ACADEMIC SKILLS PREPARATION COURSE", description: "The Academic Skills course is aiming at an earlier immersion of high school graduates, would-be Bachelor students in the academic environment. As the language of instruction is English, listening, reading, writing, and speaking skills in the target language will be improved. As part of the program, course takers will participate in lectures, seminars, and tutorials, where they will learn how to set goals, increase confidence when speaking, develop interpersonal communication skills.", data: "March 10"),
                    News(image: UIImage.init(named: "2")!, heading: "BEST UNIVERSITY TEACHER 2020", description: "Teachers of KBTU Isakhov Asylbek Abdiashimovich and Kulpeshov Beibut Shaiykovich became the holders of the title 'The best teacher of the university 2020'! 623 applicants from 73 higher educational institutions of the republic took part in the competition. The activities of teachers were assessed according to the updated qualitative and quantitative indicators of assessing the work of applicants, consisting of two blocks: I block - the quality of teaching, II block - research activities.", data: "March 2"),
                    News(image: UIImage.init(named: "3")!, heading: "EDUCATIONAL PROGRAMS OF  NCE 'ATAMEKEN'", description: "Another wonderful news! Educational programs of KBTU entered the TOP rating of educational programs of NCE “Atameken”! 1st place: Computer systems and software engineering, Automation and control, Petroleum Engineering. 2nd place: Information systems, Economics. 3rd place: Mathematical computer modeling, Management, Finance. ", data: "February 15"),
                    News(image: UIImage.init(named: "4")!, heading: "KBTU - Winner of Science - Web of Science Award'", description: "The ceremony of awarding the independent annual Science Leader award - Web of Science Awards, which is held by Clarivate Analytics under the auspices of the Ministry of Education and Science of the Republic of Kazakhstan, took place on November 25. The Kazakh-British Technical University became the owner of the independent award 'Leader of Science - Web of Science Award' in the nomination 'Leader in the number of publications in the Q1 and Q2 quartiles of the Web of Science Core Collection.", data: "February 8"),
                    News(image: UIImage.init(named: "5")!, heading: "Anniversary of the Association of Kazakh Doctoral Students in the UK", description: "In honor of the third anniversary of the founding of the Association of Kazakh Doctoral Students in the UK, a series of trainings and interactive sessions were held in the field of commercialization of scientific research, development of professional skills and career growth, publication of books and mechanisms for attracting talented Kazakh youth from abroad. Speakers of the event represented by the Ambassador of Kazakhstan to Canada Akylbek Kamaldinov, Rector of the Kazakh-British Technical University Kenzhebek Ibrashev.", data: "January 28")
                    
    ]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"newsCell") as! NewsTableViewCell
        cell.mainImage.image = objects[indexPath.row].image
        cell.heading.text = objects[indexPath.row].heading
        cell.descriptionLabel.text = objects[indexPath.row].description
        cell.dataLabel.text = objects[indexPath.row].data
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let index = (myTableView.indexPathForSelectedRow?.row)!
        guard let destination = segue.destination as? NewsVC else {return}
        destination.ImageofNews = objects[index].image
        destination.Heading = objects[index].heading
        destination.Description = objects[index].description
        destination.Date = objects[index].data
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


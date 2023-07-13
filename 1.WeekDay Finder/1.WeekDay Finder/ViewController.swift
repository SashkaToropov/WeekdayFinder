//
//  ViewController.swift
//  Delete
//
//  Created by  Toropov Oleksandr on 04.07.2023.

    import UIKit

    class ViewController: UIViewController {

        @IBOutlet weak var dayTF: UITextField!
        @IBOutlet weak var monthTF: UITextField!
        @IBOutlet weak var yearTF: UITextField!
        
        @IBOutlet weak var resultLabel: UILabel!
        
        @IBAction func findWeekDay() {
            
            let caledar = Calendar.current
            
            var dateComponents = DateComponents()
            guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else { return }
            dateComponents.day = Int(day)
            dateComponents.month = Int(month)
            dateComponents.year = Int(year)
            
            guard let date = caledar.date(from: dateComponents) else { return }
            
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_En")
            dateFormatter.dateFormat = "EEEE"
            
            let weekday = dateFormatter.string(from: date)
            
            resultLabel.text = weekday
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    }








//
//  ClientInfoViewController.swift
// 
//
//  Copyright © 2020 amir . All rights reserved.
//

import UIKit

class ClientInfoViewController: UIViewController {
    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var projectDurationTextField: UITextField!
    @IBOutlet weak var projectLocationTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var userName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func submitAction(_ sender: Any) {
        self.view.endEditing(true)
        if projectNameTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter Project Name.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else if projectDurationTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter Project Duration in Months.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else if projectLocationTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter Project Location.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            resultLabel.text = "\(userName ?? "") \n \(projectNameTextField.text ?? "") \n \(projectLocationTextField.text ?? "")"
            
        }
    }
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

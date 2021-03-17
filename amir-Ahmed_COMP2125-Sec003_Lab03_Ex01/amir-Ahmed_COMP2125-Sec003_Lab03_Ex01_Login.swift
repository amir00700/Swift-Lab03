

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginAction(_ sender: UIButton) {
        if usernameTextField.text == "Amir001" || passwordTextField.text == "Amir001" {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "ClientInfoViewController") as! ClientInfoViewController
            newViewController.modalPresentationStyle = .fullScreen
            newViewController.userName = usernameTextField.text
            self.navigationController?.pushViewController(newViewController, animated: true)
            
        } else {
            let alert = UIAlertController(title: "Error", message: "Invalid username password.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


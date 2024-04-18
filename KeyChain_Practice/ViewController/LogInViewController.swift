//
//  ViewController.swift
//  KeyChain_Practice
//
//  Created by coda on 2022/01/10.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var pwTextField: UITextField!
    var diaryViewController: DiaryViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapLogInButton(_ sender: Any) {
        guard let diaryViewController = diaryViewController else {
            return
        }

        present(diaryViewController, animated: true)
    }
    
    @IBAction func addNewPassword(_ sender: Any) {
        
    }
}


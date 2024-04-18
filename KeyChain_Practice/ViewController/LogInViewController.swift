//
// LogInViewController.swift
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addNewPassword(_ sender: Any) {
        // passwordTextField에 입력된 패스워드를 저장합니다.
        // 이미 저장된 비밀번호가 있다 하더라도, 버튼을 누를 때마다 새로운 비밀번호로 업데이트 됩니다.
    }
    
    @IBAction func deletePassword(_ sender: UIButton) {
        // 등록된 비밀번호를 삭제합니다.
    }
    
    @IBAction func tapLogInButton(_ sender: Any) {
        // 저장된 패스워드가 passwordTextField에 입력된 패스워드와 일치하는지 확인합니다.
        // 패스워드가 일치하지 않는다면 DiaryViewController를 보여주어선 안됩니다.
        // 패스워드가 일치하면 DiaryViewController를 push합니다.
        
        guard let diaryViewController = self.storyboard?.instantiateViewController(withIdentifier: "diary") as? DiaryViewController else { return }
        self.navigationController?.pushViewController(diaryViewController, animated: true)
    }
    
    // Show Alert: 간단한 Alert를 띄울 일이 있다면 활용해보세요. (ex. 비밀번호 일치하지 않음 알림 등)
    private func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "확인", style: .default)
        alertController.addAction(alertAction)
        
        self.present(alertController, animated: true)
    }
}


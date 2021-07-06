//
//  ViewController.swift
//  VkClientGB
//
//  Created by Евгений Черкасов on 04.07.2021.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Жест нажатия
            let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        // Присваиваем его UIScrollVIew
            scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    


    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        let login = loginInput.text!
        // Получаем текст-пароль
        let password = passwordInput.text!
        // Проверяем, верны ли они
        if login == "admin" && password == "1234" {
        print("успешная авторизация")
        } else {
            // Initialize Alert Controller
            let alertController = UIAlertController(title: "Error",
                                                    message: "Неверное имя или пароль.",
                                                    preferredStyle: .alert)
                 
                // Initialize Actions
            let yesAction = UIAlertAction(title: "Try again.", style: .default) { (action) -> Void in
                print("неуспешная авторизация")
                }
                // Add Actions
                alertController.addAction(yesAction)
                // Present Alert Controller
            self.present(alertController, animated: true, completion: nil)

            self.shakeTextField(textField: passwordInput, numberOfShakes: 2, direction: 1, maxShakes: 3)
            
        }
    }
    
//
    // Когда клавиатура появляется
    @objc func keyboardWasShown(notification: Notification) {
    // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
    // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
             scrollView?.scrollIndicatorInsets = contentInsets
    }
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name:UIResponder.keyboardWillShowNotification, object: nil)
    // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
    // Функция дрожания
    func shakeTextField(textField: UITextField, numberOfShakes: Int, direction: CGFloat, maxShakes: Int) {

        let interval: TimeInterval = 0.03

        UIView.animate(withDuration: interval, animations: { () -> Void in
            textField.transform = CGAffineTransform(translationX: 5 * direction, y: 0)

            }, completion: { (aBool :Bool) -> Void in

                if (numberOfShakes >= maxShakes) {
                    textField.transform = .identity
                    textField.becomeFirstResponder()
                    return
                }

                self.shakeTextField(textField: textField, numberOfShakes: numberOfShakes + 1, direction: direction * -1, maxShakes: maxShakes)
        })

    }
    
}


//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Vladimir Gorbunov on 21/10/2019.
//  Copyright © 2019 Vladimir Gorbunov. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    //Скрытие бара навигации назад
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    //Показ бара с навигацие назад при сменен View
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = K.appName
//
//        //Animated welcome logo text
//        let title = "⚡️FlashChat"
//        titleLabel.text = ""
//        var titleCharIndex = 0.0
//        for letter in title {
//            Timer.scheduledTimer(withTimeInterval: 0.1 * titleCharIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            titleCharIndex += 1
//        }
    }
}

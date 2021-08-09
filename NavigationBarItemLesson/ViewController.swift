//
//  ViewController.swift
//  NavigationBarItemLesson
//
//  Created by UrataHiroki on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {

    var underView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showUnderView))
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
    }

    @objc func showUnderView(){
        
        
        
    }
    

    
}


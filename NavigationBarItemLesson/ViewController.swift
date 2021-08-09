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
        
        createUnderView()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
    }

    @objc func showUnderView(){
        
        
        
    }
    
    func createUnderView(){
        
        underView = UIView(frame: CGRect(x: view.frame.minX + 5, y: view.frame.maxY - (view.frame.maxY / 7.5), width: view.frame.size.width - 10, height: view.frame.size.height / 9))
        
        underView.layer.cornerRadius = 15.0
        underView.backgroundColor = .systemGray2
        underView.alpha = 0.35
        
        view.addSubview(underView)
        
    }
    
    func createButton(){
        
        
        
    }
    
}


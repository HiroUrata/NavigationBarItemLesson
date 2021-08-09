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
        
        if underView.frame.origin.y == view.frame.maxY - (view.frame.maxY / 7.5){
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.underView.frame.origin.y = self.view.frame.maxY}, completion: nil)
            
        }else if underView.frame.origin.y == view.frame.maxY{
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.underView.frame.origin.y = self.view.frame.maxY - (self.view.frame.maxY / 7.5)}, completion: nil)

            
        }
    }
    
    func createUnderView(){
        
        underView = UIView(frame: CGRect(x: view.frame.minX + 5, y: view.frame.maxY - (view.frame.maxY / 7.5), width: view.frame.size.width - 10, height: view.frame.size.height / 9))
        
        underView.layer.cornerRadius = 15.0
        underView.backgroundColor = .systemGray2
        underView.alpha = 0.35
        
        view.addSubview(underView)
        
    }
    
}

//
//  ViewController.swift
//  NavigationBarItemLesson
//
//  Created by UrataHiroki on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {

    var underView = UIView()
    var underViewButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showUnderView))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下げる", style: .done, target: self, action: #selector(LowerView))
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createUnderView()
        createUnderViewButton(yPoint: underView.frame.origin.y)
    }

    @objc func showUnderView(){
        
        if underView.frame.origin.y == self.view.frame.maxY{
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.underView.frame.origin.y = self.view.frame.maxY - (self.view.frame.maxY / 7.5)}, completion: nil)
            
            UIButton.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.underViewButton.frame.origin.y = self.underView.frame.origin.y + 10}, completion: nil)
            
        }else if underView.frame.origin.y == self.view.frame.maxY - (self.view.frame.maxY / 7.5){
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.underView.frame.origin.y = self.view.frame.maxY}, completion: nil)

            UIButton.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.underViewButton.frame.origin.y = self.underView.frame.origin.y + 3}, completion: nil)
        }
    }
    
    func createUnderView(){
        
        underView = UIView(frame: CGRect(x: view.frame.minX + 5, y: self.view.frame.maxY, width: view.frame.size.width - 10, height: view.frame.size.height / 9))
        
        underView.layer.cornerRadius = 15.0
        underView.backgroundColor = .systemGray2
        underView.alpha = 0.35
        
        view.addSubview(underView)
        
    }
    
    func createUnderViewButton(yPoint:CGFloat){

        underViewButton = UIButton(frame: CGRect(x: underView.frame.minX + 10, y: yPoint + 10, width: underView.frame.size.height - 20, height:underView.frame.size.height - 20))
        
        underViewButton.backgroundColor = UIColor.systemIndigo
        underViewButton.layer.cornerRadius = 15.0
        underViewButton.setTitle("Button", for: .normal)
        underViewButton.setTitleColor(.white, for: .normal)
        underViewButton.addTarget(self, action: #selector(test), for: .touchDown)
        
        view.addSubview(underViewButton)
        print("underViewButton表示")

    }
    
    @objc func test(sender:UIButton){
        
          
        
    }
    
}

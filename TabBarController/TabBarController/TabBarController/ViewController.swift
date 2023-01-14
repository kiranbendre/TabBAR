//
//  ViewController.swift
//  TabBarController
//
//  Created by Iphone XR on 27/12/22.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create instance of viewcontrollers
        let homeVC = HomeVC()
        let fvtVC = FavouriteVC()
        let notifyVC = NotifyVC()
        
        
        homeVC.title = "Home"
        fvtVC.title = "Favorite"
        notifyVC.title = "Notify"
            //assign vc to tabbar
        self.setViewControllers([homeVC,fvtVC,notifyVC], animated: false)
        
        guard let items = self.tabBar.items else{ return }
        
        let images = ["house","star","bell"]
        for x in 0...2 {
            items[x].image = UIImage(systemName: images[x])
        }
        //changing tint color
        self.tabBar.tintColor = .black
    }


}

class HomeVC:UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        
    }
}

class FavouriteVC: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "Favorite"
    }
}
class NotifyVC: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = "Notify"
    }
}

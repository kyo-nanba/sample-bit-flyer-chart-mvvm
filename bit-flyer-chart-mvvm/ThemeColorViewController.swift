//
//  ThemeColorViewController.swift
//  bit-flyer-chart-mvvm
//
//  Created by kyo on 2017/10/05.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ThemeColorViewController: UITableViewController {
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func bind() {
        tableView.rx.itemSelected
            .subscribe(onNext: { IndexPath in
                let cell = self.tableView.cellForRow(at: IndexPath) as! ThemeColorTableViewCell
                self.navigationController?.navigationBar.backgroundColor = cell.colorView.backgroundColor
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let tabBarController = appDelegate.window?.rootViewController as! UITabBarController
                tabBarController.tabBar.tintColor = cell.colorView.backgroundColor
            })
            .disposed(by: disposeBag)
    }
    
    // MARK: UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThemeColorTableViewCell") as! ThemeColorTableViewCell
        let red = CGFloat(arc4random_uniform(255)) / 255.0
        let green = CGFloat(arc4random_uniform(255)) / 255.0
        let blue = CGFloat(arc4random_uniform(255)) / 255.0
        
        cell.colorView.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1.0)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    // MARK: UITableViewDelegate
}

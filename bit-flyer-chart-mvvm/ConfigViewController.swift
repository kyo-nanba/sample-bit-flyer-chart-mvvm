//
//  ConfigViewController.swift
//  bit-flyer-chart-mvvm
//
//  Created by kyo on 2017/10/05.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ConfigViewController: UITableViewController {
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func bind() {
        self.tableView.rx.itemSelected
            .subscribe(onNext: { IndexPath in
                print("touch cell index, this is subscribe")
            })
            .disposed(by: disposeBag)
    }
}


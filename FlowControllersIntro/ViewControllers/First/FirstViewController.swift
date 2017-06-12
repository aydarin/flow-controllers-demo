//
//  FirstViewController.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/7/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var viewModel: FirstViewModel! {
        didSet {
            if isViewLoaded {
                bindToViewModel()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindToViewModel()
    }
    
    private func bindToViewModel() {
        title = viewModel.title
        view.backgroundColor = viewModel.color
    }
    
    static func createStoryboardInstance() -> FirstViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "first") as! FirstViewController
    }
    
    // MARK: - Actions

    @IBAction func nextPressed(_ sender: Any) {
        viewModel.nextPressed()
    }
    
}

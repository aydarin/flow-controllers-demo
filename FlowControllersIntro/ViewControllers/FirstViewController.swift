//
//  FirstViewController.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/7/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var onNext: ((Void) -> Void)?
    var color: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "First"
        updateColor()
    }
    
    private func updateColor() {
        view.backgroundColor = color
    }
    
    static func createStoryboardInstance() -> FirstViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "first") as! FirstViewController
    }
    
    // MARK: - Actions

    @IBAction func nextPressed(_ sender: Any) {
        onNext?()
    }
    
}

//
//  SecondViewController.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/7/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var onNext: ((Void) -> Void)?
    var count: Int!

    @IBOutlet private weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second"
        updateCount()
    }
    
    private func updateCount() {
        countLabel.text = "\(count ?? 0)"
    }
    
    static func createStoryboardInstance() -> SecondViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second") as! SecondViewController
    }
    
    // MARK: - Actions
    
    @IBAction func nextPressed(_ sender: Any) {
        onNext?()
    }

}

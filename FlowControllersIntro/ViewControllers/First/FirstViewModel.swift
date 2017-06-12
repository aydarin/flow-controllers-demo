//
//  FirstViewModel.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/12/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

class FirstViewModel {
    
    let color: UIColor
    let title: String
    
    var onNext: ((Void) -> Void)?
    
    init(color: UIColor, title: String) {
        self.color = color
        self.title = title
    }
    
    // MARK: - Actions
    
    func nextPressed() {
        onNext?()
    }
    
}

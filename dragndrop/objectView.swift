//
//  objectView.swift
//  dragndrop
//
//  Created by Vishal Hosakere on 11/03/19.
//  Copyright © 2019 Vishal Hosakere. All rights reserved.
//

import UIKit

class objectView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        self.center = touch!.location(in: self.superview)
    }

}

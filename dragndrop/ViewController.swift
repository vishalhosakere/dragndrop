//
//  ViewController.swift
//  dragndrop
//
//  Created by Vishal Hosakere on 11/03/19.
//  Copyright © 2019 Vishal Hosakere. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.maximumZoomScale = 6.0
        self.scrollView.minimumZoomScale = 1.0
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func touched(_ sender: UIButton) {
        let frame = CGRect(x: 100, y: 100, width: 100, height: 100  )
        let newView = objectView(frame: frame)
        newView.isUserInteractionEnabled = true
        
        newView.image = UIImage(named: sender.titleLabel!.text!.lowercased())
        newView.image = UIImage(named: sender.titleLabel!.text!.lowercased())
        newView.contentMode = .scaleAspectFit
        subView.addSubview(newView)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        print("zooming in")
        return subView
        
    }
}


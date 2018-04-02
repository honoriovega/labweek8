//
//  CardViewController.swift
//  TinderClone
//
//  Created by Honorio Vega on 4/1/18.
//  Copyright © 2018 Honorio Vega. All rights reserved.
//
//


import UIKit

class CardViewController: UIViewController {
    
    @IBOutlet weak var card: UIImageView!
    var cardCenter: CGPoint!
    var cardInitialCenter: CGPoint!
    var divisor: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(didMoveCard(_:)))
        card.isUserInteractionEnabled = true
        card.addGestureRecognizer(panGestureRecognizer)
        
        divisor = (view.frame.width / 2)/0.61
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didMoveCard(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        let xFromCenter = card.center.x - view.center.x
        
        card.transform = CGAffineTransform(rotationAngle: xFromCenter/divisor)
        
        if sender.state == .began {
            print("Gesture began")
            cardCenter = card.center
        } else if sender.state == .changed {
            print("Gesture is changing")
            card.center = CGPoint(x: cardCenter.x + translation.x, y: cardCenter.y)
            
        } else if sender.state == .ended {
            print("Gesture ended")
            card.transform = CGAffineTransform.identity
            card.center = view.center
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileViewController = segue.destination as? ProfileViewController {
            profileViewController.image = self.card.image
        }
    }
    
    
}


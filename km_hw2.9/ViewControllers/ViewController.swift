//
//  ViewController.swift
//  km_hw2.9
//
//  Created by Konstantin on 19.09.2020.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var descriptionLabel: SpringLabel!
    
    let animation = Animation.getAnimation()
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.isHidden = true
    }
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
        animationView.isHidden = false
        
        showAnimation(view: animationView)
        showAnimation(view: descriptionLabel)
        
        showLabel()
        
        nextAnimation(sender: sender)
        
        updateAnimation()
    }
    
    private func nextAnimation(sender: SpringButton) {
        if currentAnimation + 1 < animation.count {
            sender.setTitle(animation[currentAnimation].name, for: .normal)
        }
    }
    
    private func showAnimation(view: Springable) {
        if currentAnimation < animation.count {
        
        view.animation = animation[currentAnimation].name
        view.curve = animation[currentAnimation].curve
        view.duration = animation[currentAnimation].duration
        view.damping = animation[currentAnimation].damping
        view.velocity = animation[currentAnimation].velocity
        view.scaleX = animation[currentAnimation].scaleX
        view.scaleY = animation[currentAnimation].scaleY
        view.rotate = animation[currentAnimation].rotate
        view.animate()
        }
    }
    
    private func showLabel() {
        if currentAnimation < animation.count {
        
        descriptionLabel.text = ("""
                                name \(animation[currentAnimation].name)
                                curve \(animation[currentAnimation].curve)
                                duration \(String(format: "%.3f", animation[currentAnimation].duration))
                                damping \(String(format: "%.3f", animation[currentAnimation].damping))
                                velocity \(String(format: "%.3f", animation[currentAnimation].velocity))
                                scale X \(String(format: "%.3f", animation[currentAnimation].scaleX))
                                scale Y \(String(format: "%.3f", animation[currentAnimation].scaleY))
                                rotate \(String(format: "%.3f", animation[currentAnimation].rotate))
                                """)
            
        currentAnimation += 1
        }
    }
    
    private func updateAnimation() {
        if currentAnimation == animation.count {
            currentAnimation = 0
        }
    }
    
}


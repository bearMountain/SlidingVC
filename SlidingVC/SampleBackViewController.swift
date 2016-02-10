





import UIKit


class SampleBackViewController: UIViewController {
    
    //MARK: - ViewLifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blueColor()
        
        let button = UIButton(type: .Custom)
        button.setTitle("Toggle", forState: .Normal)
        button.setTitleColor(.whiteColor(), forState: .Normal)
        button.addTarget(self, action: "togglePressed", forControlEvents: .TouchUpInside)
        button.sizeToFit()
        button.center = CGPoint(x: view.frame.width/2.0, y: 50)
        view.addSubview(button)
    }
    
    //MARK: - Private
    func togglePressed() {
        let slidingContainerVC = self.parentViewController as! SlidingContainerViewController
        slidingContainerVC.toggleFrontView()
    }
}

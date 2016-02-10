




import UIKit

class SlidingContainerViewController: UIViewController {
    
    //MARK: - Init
    init(frontViewController: UIViewController, backViewController: UIViewController) {
        super.init(nibName: nil, bundle: nil)
        frontViewContoller = frontViewController
        backViewContoller = backViewController
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Public
    var frontViewContoller: UIViewController = UIViewController()
    var backViewContoller: UIViewController = UIViewController()
    var splitOriginY: CGFloat = 160.0
    
    func toggleFrontView() {
        if frontIsVisible {
            UIView.animateWithDuration(0.4) {
                self.frontViewContoller.view.frame.origin.y = self.view.frame.height
                self.frontIsVisible = false
            }
        } else {
            UIView.animateWithDuration(0.4) {
                self.frontViewContoller.view.frame.origin.y = self.splitOriginY
                self.frontIsVisible = true
            }
            
        }
    }
    
    //MARK: - ViewLifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(backViewContoller)
        addChild(frontViewContoller)
        self.frontViewContoller.view.frame.origin.y = self.view.frame.height
    }
    
    //MARK: - Private
    var frontIsVisible = false
    
    private func addChild(viewController: UIViewController) {
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.view.frame = view.bounds
        viewController.didMoveToParentViewController(self)
    }
    
}



import UIKit

// VFL



class ViewController: UIViewController {
    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    
    let greenView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .green
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    let blackView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .black
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(redView)
        self.view.addSubview(blueView)
        self.view.addSubview(greenView)
        self.view.addSubview(blackView)
        
        
        let viewVFL = ["redView": redView, "blueView": blueView, "greenView": greenView, "blackView": blackView]
        
        let metrics = ["height": 100, "width": self.view.bounds.width/3, "top1": self.view.bounds.height/5, "top2": self.view.bounds.height/5 * 3]
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-top1-[greenView(top1)]-top1-[redView(top1)]",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-top1-[blackView(top1)]-top1-[blueView(top1)]",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[greenView(width)]-50-[blackView(width)]-|",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[redView(width)]-50-[blueView(width)]-|",
            options: [], //расположение объекта внутри (центровка)
            metrics: metrics,
            views: viewVFL))
        
    }
    
}




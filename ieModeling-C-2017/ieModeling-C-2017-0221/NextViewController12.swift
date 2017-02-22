import UIKit
import WebKit

class NextViewController12: UIViewController,UIGestureRecognizerDelegate,WKNavigationDelegate {
    
    
    @IBAction func button1(_ sender: UIButton) {
        //let b = storyboard!.instantiateViewController(withIdentifier: "NextViewController1122")
        //self.present(b,animated: true, completion: nil)
        let a = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        
        a.f = a.f + 0
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func button2(_ sender: UIButton) {
        //let c = storyboard!.instantiateViewController(withIdentifier: "NextViewController2211")
        //self.present(c,animated: true, completion: nil)
        let b = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        b.f = b.f + 1
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

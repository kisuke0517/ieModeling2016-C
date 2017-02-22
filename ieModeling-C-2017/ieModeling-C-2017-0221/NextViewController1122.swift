import UIKit
import WebKit

class NextViewController1122: UIViewController,UIGestureRecognizerDelegate,WKNavigationDelegate {
    
    @IBOutlet weak var web1122: UIWebView!
    
    //@IBOutlet weak var web1: UIWebView!
    
    
    var n: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //web1.navigationDelegate = self
        let path : String = Bundle.main.path(forResource:"basic2", ofType: "html", inDirectory: "web")!
        web1122.loadRequest(URLRequest(url: URL(string: path)! as URL) as URLRequest)
        
        // シングルタップ
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(NextViewController1122.tapSingle(_:))) //Swift2.2以前
        //let singleTap = UITapGestureRecognizer(target: self, action: #selector(NextViewController.tapSingle(sender:)))  //Swift3
        singleTap.numberOfTapsRequired = 1
        //singleTap.numberOfTouchesRequired = 2  //こう書くと2本指じゃないとタップに反応しない
        
        //これを書かないとダブルタップ時にもシングルタップのアクションも実行される
        //singleTap.requireGestureRecognizerToFail(doubleTap)  //Swift2.2
        //singleTap.require(toFail: doubleTap)  //Swift3
        
        view.addGestureRecognizer(singleTap)
    }
    // func web1(_web1: WKWebView,didCommit Navigation: WKNavigation!){
    //   self.dismiss(animated: true, completion: nil)
    
    //}
    func tapSingle(_ sender: UITapGestureRecognizer) {
        n = n + 1;
        //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        //vc.m = 2
        
        if(n == 5){
            //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            //vc.m = vc.m + 1
            //performSegue(withIdentifier: "nextSegue", sender: nil)
            //self.dismiss(animated: true, completion: nil)
            //let d = storyboard!.instantiateViewController(withIdentifier: "PageViewController")
            //pageViewController!.setViewControllers([getFirst()], direction: .forward, animated: false, completion: nil)
            //self.present(d,animated: true, completion: nil)
            //let before = storyboard!.instantiateViewController(withIdentifier: "PageViewController")
            //self.present(before,animated: true, completion: nil)
            //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            //vc.flag = vc.flag + 0
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
